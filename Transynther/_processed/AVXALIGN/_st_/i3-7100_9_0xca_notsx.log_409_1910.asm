.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x13329, %rax
nop
nop
nop
nop
dec %r14
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
xor $59059, %rbp
lea addresses_WC_ht+0x1505d, %rbx
clflush (%rbx)
nop
nop
and $14846, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm5
and $0xffffffffffffffc0, %rbx
vmovaps %ymm5, (%rbx)
cmp %r13, %r13
lea addresses_UC_ht+0x6311, %rsi
lea addresses_normal_ht+0x153c1, %rdi
nop
nop
nop
cmp $63078, %r10
mov $120, %rcx
rep movsw
nop
nop
nop
xor $18166, %r14
lea addresses_UC_ht+0x45ed, %rbp
nop
nop
sub $17782, %rdi
movups (%rbp), %xmm0
vpextrq $0, %xmm0, %r13
dec %rax
lea addresses_WT_ht+0x19721, %rsi
lea addresses_WC_ht+0x1b7a1, %rdi
nop
nop
nop
xor $50409, %rbp
mov $60, %rcx
rep movsw
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x389a, %rsi
lea addresses_WT_ht+0x5121, %rdi
nop
nop
nop
nop
sub $23747, %r10
mov $75, %rcx
rep movsl
nop
add $25968, %rsi
lea addresses_WT_ht+0x1a5b4, %rsi
lea addresses_A_ht+0x6a21, %rdi
nop
nop
nop
xor $10246, %rax
mov $74, %rcx
rep movsw
nop
lfence
lea addresses_D_ht+0xb8f1, %rsi
lea addresses_WC_ht+0x8961, %rdi
clflush (%rsi)
and %rbp, %rbp
mov $64, %rcx
rep movsw
cmp $9425, %r14
lea addresses_A_ht+0x1e521, %rcx
nop
nop
nop
nop
nop
add %rdi, %rdi
movb $0x61, (%rcx)
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x15d21, %rsi
nop
nop
nop
nop
sub $9401, %rbp
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0xf0a1, %r13
clflush (%r13)
nop
nop
nop
nop
nop
inc %rsi
mov (%r13), %ax
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x6521, %r10
nop
nop
nop
nop
dec %rcx
movl $0x61626364, (%r10)
nop
nop
nop
nop
xor $15563, %rax
lea addresses_normal_ht+0xf421, %rax
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rax)
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x1a721, %rsi
nop
cmp %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rsi)
nop
and %rbx, %rbx
lea addresses_WT_ht+0x1d721, %rdi
nop
nop
nop
nop
and $31331, %rax
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x1c691, %rdx
nop
lfence
mov $0x5152535455565758, %rax
movq %rax, %xmm0
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm0, (%rdx)
nop
inc %r8

// Store
lea addresses_RW+0xa5f1, %rcx
nop
nop
inc %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rcx)
nop
nop
sub $59795, %rcx

// Store
mov $0x4b923f0000000721, %rax
nop
add %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rax)
nop
nop
nop
sub $47534, %rbx

// Faulty Load
lea addresses_A+0xf721, %rdx
nop
nop
sub %r14, %r14
mov (%rdx), %bx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 409}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/

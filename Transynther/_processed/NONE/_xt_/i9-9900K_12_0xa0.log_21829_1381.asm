.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x8a3a, %rsi
lea addresses_normal_ht+0x43c2, %rdi
nop
nop
nop
nop
add $50416, %rax
mov $15, %rcx
rep movsb
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x1a63a, %rbp
nop
nop
xor $20840, %rcx
mov (%rbp), %r13d
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x993a, %rsi
lea addresses_WC_ht+0xab72, %rdi
cmp %r10, %r10
mov $68, %rcx
rep movsl
nop
nop
and $62071, %rax
lea addresses_UC_ht+0x152ba, %rbp
nop
nop
nop
sub %rsi, %rsi
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
and %rcx, %rcx
lea addresses_normal_ht+0x309a, %rsi
lea addresses_UC_ht+0x19e7a, %rdi
nop
nop
nop
dec %rbp
mov $72, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0x16efa, %rsi
lea addresses_normal_ht+0x15946, %rdi
clflush (%rsi)
nop
nop
nop
lfence
mov $18, %rcx
rep movsw
nop
inc %r10
lea addresses_WC_ht+0x132fa, %rsi
nop
and %r9, %r9
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0xdc36, %rsi
lea addresses_WT_ht+0x183ba, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $86, %rcx
rep movsb
nop
xor $29657, %rcx
lea addresses_A_ht+0xb09a, %rsi
lea addresses_D_ht+0x158fa, %rdi
nop
nop
nop
nop
and $22782, %r13
mov $111, %rcx
rep movsb
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x156fa, %rsi
lea addresses_A_ht+0x6cfa, %rdi
clflush (%rdi)
nop
sub %rax, %rax
mov $4, %rcx
rep movsw
nop
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x59b7, %r9
nop
nop
nop
nop
nop
and $60390, %rbp
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x6d98, %r13
nop
nop
dec %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
nop
nop
nop
sub $30826, %rbp
lea addresses_UC_ht+0x1d2fa, %r9
nop
nop
nop
xor $39959, %rbp
mov (%r9), %ax
nop
nop
nop
add %r13, %r13
lea addresses_D_ht+0x189fa, %r9
clflush (%r9)
dec %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%r9)
nop
nop
nop
nop
nop
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WT+0x1cafa, %rbx
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%rbx)
nop
nop
and %rax, %rax

// Store
lea addresses_A+0x195a, %rdx
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%rdx)

// Exception!!!
nop
nop
mov (0), %rbp
xor %rdx, %rdx

// Faulty Load
lea addresses_normal+0x1e6fa, %rbp
nop
nop
nop
nop
cmp $48237, %r10
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/

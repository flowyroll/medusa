.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x11bd2, %rax
nop
nop
nop
nop
add %r13, %r13
mov (%rax), %r9d
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x12c72, %r8
nop
nop
nop
inc %rbx
mov (%r8), %r14d
nop
nop
nop
dec %r14
lea addresses_UC_ht+0xb072, %rbx
and %rbp, %rbp
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
nop
dec %rbp
lea addresses_WC_ht+0x109f2, %rbp
nop
nop
nop
nop
cmp $9185, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
add %r14, %r14
lea addresses_D_ht+0x1a072, %rax
nop
nop
nop
xor $20634, %r14
movw $0x6162, (%rax)
sub %r14, %r14
lea addresses_WT_ht+0x1a4f2, %rsi
lea addresses_WT_ht+0x1e098, %rdi
add $17971, %rax
mov $9, %rcx
rep movsb
nop
nop
xor $53590, %r14
lea addresses_A_ht+0x1072, %rbx
nop
nop
nop
nop
and $45516, %rcx
movb (%rbx), %r9b
nop
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x10c72, %r8
nop
nop
sub $53648, %rsi
movl $0x61626364, (%r8)
nop
nop
nop
nop
xor $3985, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x9f72, %rbp
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movntdq %xmm5, (%rbp)
dec %rdi

// Store
lea addresses_normal+0x18bf6, %r15
clflush (%r15)
nop
nop
nop
nop
inc %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_US+0x2872, %r15
nop
nop
nop
add %rcx, %rcx
mov (%r15), %rsi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'00': 388}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

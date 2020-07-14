.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x14b92, %r9
clflush (%r9)
nop
nop
nop
nop
nop
add $46872, %r8
mov (%r9), %r14w
nop
nop
dec %r14
lea addresses_D_ht+0xf53a, %r10
cmp %rax, %rax
movb (%r10), %bl
nop
nop
nop
nop
nop
dec %r14
lea addresses_A_ht+0x1dcaa, %r8
nop
nop
nop
nop
nop
add %rdx, %rdx
movw $0x6162, (%r8)
nop
nop
inc %r10
lea addresses_WC_ht+0x8ada, %rsi
lea addresses_normal_ht+0xf6aa, %rdi
sub %rax, %rax
mov $64, %rcx
rep movsw
dec %rbx
lea addresses_A_ht+0x15e66, %rsi
lea addresses_UC_ht+0x562a, %rdi
dec %r14
mov $33, %rcx
rep movsb
nop
nop
nop
nop
add $40084, %r8
lea addresses_UC_ht+0x62a, %rsi
nop
nop
nop
nop
inc %r10
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
xor $256, %r14
lea addresses_UC_ht+0x190aa, %r9
nop
nop
xor %rax, %rax
mov (%r9), %r8d
nop
nop
and $13448, %rax
lea addresses_A_ht+0x1892a, %r8
nop
nop
nop
and $41865, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
xor $38905, %rax
lea addresses_normal_ht+0x17e6a, %rax
nop
nop
nop
nop
sub %r14, %r14
mov (%rax), %di
nop
nop
nop
nop
nop
sub $4065, %rbx
lea addresses_WT_ht+0x1303a, %rsi
lea addresses_UC_ht+0x15042, %rdi
nop
cmp %r10, %r10
mov $116, %rcx
rep movsb
sub %rbx, %rbx
lea addresses_WT_ht+0x2aaa, %rcx
nop
nop
inc %rdi
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x16757, %rsi
lea addresses_UC_ht+0x70e2, %rdi
nop
nop
nop
add $26308, %r9
mov $53, %rcx
rep movsw
nop
add $3727, %rcx
lea addresses_D_ht+0x1dcaa, %rbx
nop
nop
nop
sub %r14, %r14
mov (%rbx), %rcx
nop
nop
cmp $21178, %rdx
lea addresses_WT_ht+0x1251a, %rdi
nop
nop
nop
sub %rcx, %rcx
mov (%rdi), %r8
nop
nop
nop
nop
and %rax, %rax
lea addresses_WT_ht+0x680a, %rbx
nop
nop
nop
nop
nop
add $46754, %rdx
movb (%rbx), %r10b
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WT+0x122fe, %r9
nop
nop
nop
nop
add $27563, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
nop
sub $55269, %rdx

// Load
lea addresses_D+0x78aa, %rdx
nop
nop
nop
xor $9241, %r13
vmovups (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Load
mov $0x3c435c000000070a, %rax
nop
add $32237, %rsi
movb (%rax), %r13b
nop
nop
nop
nop
sub $65515, %rsi

// Store
lea addresses_WT+0x15fca, %r9
nop
nop
nop
sub %rbx, %rbx
movb $0x51, (%r9)

// Exception!!!
nop
nop
nop
mov (0), %r15
nop
nop
nop
nop
dec %r9

// Load
mov $0x392, %r13
nop
nop
nop
sub $11103, %rdx
movups (%r13), %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_normal+0x19eaa, %r15
nop
nop
nop
nop
xor $24486, %rdx
mov (%r15), %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 12145}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/

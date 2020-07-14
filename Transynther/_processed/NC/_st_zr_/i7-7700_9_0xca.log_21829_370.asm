.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1e215, %rsi
lea addresses_D_ht+0xd911, %rdi
nop
nop
and %rbp, %rbp
mov $107, %rcx
rep movsw
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0xa991, %rbp
nop
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rbp)
nop
dec %rdi
lea addresses_WT_ht+0x1ba91, %rsi
lea addresses_A_ht+0x18691, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $18041, %r13
mov $10, %rcx
rep movsw
nop
nop
nop
nop
xor $16224, %rsi
lea addresses_UC_ht+0xf091, %r13
nop
dec %r15
mov (%r13), %rbp
nop
nop
nop
sub $3894, %r13
lea addresses_A_ht+0x18691, %rsi
lea addresses_D_ht+0x1df51, %rdi
nop
nop
nop
sub %r12, %r12
mov $41, %rcx
rep movsl
nop
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x5e91, %rcx
nop
nop
inc %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rcx)
sub %r13, %r13
lea addresses_normal_ht+0x15291, %rsi
lea addresses_A_ht+0x9f11, %rdi
clflush (%rsi)
nop
nop
nop
xor $56545, %rbp
mov $118, %rcx
rep movsw
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x11091, %r12
nop
nop
nop
nop
nop
dec %rsi
vmovups (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
nop
nop
nop
nop
nop
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x1871, %rsi
lea addresses_PSE+0x67d1, %rdi
nop
nop
nop
nop
dec %r10
mov $121, %rcx
rep movsq
add %r8, %r8

// Load
mov $0xe51, %rcx
nop
nop
lfence
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
nop
add $19184, %rsi

// Store
mov $0x4f5d650000000e91, %rsi
add $29945, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
dec %rax

// Load
mov $0x291, %r10
nop
nop
nop
nop
dec %rbx
movups (%r10), %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_US+0x2d01, %rbx
nop
nop
nop
add $15867, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rbx)

// Exception!!!
nop
nop
mov (0), %r8
add $45096, %r8

// Faulty Load
mov $0x4f5d650000000e91, %r8
cmp %rcx, %rcx
movups (%r8), %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'33': 17479, '00': 4350}
33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 00 33 33 33 33 33 33 33 33 00 33 33 33 00 33 33 33 33 00 00 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 00 33 33 00 33 33 33 00 33 33 33 33 00 33 33 00 33 33 33 33 33 33 33 33 33 00 00 33 33 00 33 33 33 33 33 33 33 00 00 33 33 33 33 33 00 00 33 33 33 33 33 33 33 00 33 33 33 33 33 00 33 00 33 33 33 33 33 00 33 33 33 33 33 33 33 00 33 33 00 33 00 33 00 33 33 33 33 33 33 33 33 00 33 33 00 00 33 33 33 33 33 33 33 00 33 33 33 33 33 33 00 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 00 33 33 00 33 33 33 33 33 33 33 33 33 00 33 33 33 33 00 33 00 33 00 33 33 33 00 33 33 33 33 00 33 33 33 33 00 33 33 00 33 33 33 33 00 33 33 33 00 33 00 00 33 33 33 33 33 00 00 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 00 33 00 00 33 33 33 00 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 00 33 33 00 33 33 33 00 33 33 33 33 33 33 00 33 33 33 33 33 00 33 33 33 00 33 33 00 00 33 33 33 33 33 33 00 33 00 33 33 33 33 00 33 00 00 33 33 33 33 33 00 33 33 33 33 33 00 33 00 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 00 33 00 33 33 33 33 33 33 33 00 33 33 33 33 33 33 00 33 33 33 00 00 33 33 33 33 33 33 33 33 33 00 33 33 33 00 33 33 33 00 33 33 33 33 33 00 33 33 33 33 33 33 33 33 00 33 00 33 33 33 33 33 00 33 33 33 00 33 33 00 33 00 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 00 33 00 33 33 33 33 33 33 33 00 33 00 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 00 33 33 33 33 33 00 33 33 33 00 33 00 33 33 00 33 33 33 00 33 00 33 33 33 00 00 33 33 33 33 00 00 33 33 00 33 00 33 33 00 33 33 00 33 33 33 00 33 00 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 00 33 00 00 00 33 33 33 33 00 33 33 00 33 33 00 33 00 33 33 00 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 00 33 33 33 00 33 33 00 33 33 33 33 00 33 00 00 33 00 33 33 00 33 33 00 33 33 33 33 00 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 00 33 00 33 33 00 33 33 33 00 33 33 33 33 00 33 00 33 33 33 33 33 00 00 33 33 33 33 00 33 00 33 33 33 00 33 33 33 00 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 00 00 00 00 00 33 33 00 33 33 33 00 33 33 33 33 33 33 33 33 00 33 33 33 33 00 33 33 00 33 33 33 00 33 33 33 33 33 33 33 33 33 33 00 33 00 33 33 33 33 33 33 33 33 33 33 33 00 33 00 33 00 33 00 33 33 33 00 00 33 33 00 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 00 33 00 33 00 33 33 33 33 33 33 33 33 00 33 33 33 00 33 00 33 33 33 00 33 33 00 33 00 33 33 33 33 33 33 00 00 33 33 33 33 00 33 33 33 33 33 33 33 33 00 00 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 00 00 33 33 33 33 33 33 33 00 00 33 33 33 33 33 33 33 00 33 33 00 33 00 33 33 00 00 33 00 33 00 33 00 33 33 33 33 00 33 33 33 33 00 33 33 33 33 33 33 00 33 33 33 33 33 33 00 33 33 33 33 33 33 33 00 33 33 33 33 33 33 00 00 33 33 33 00 33 00 00 33 33 33 33 33 00 33 33 33 00 33 33 33 33 33
*/

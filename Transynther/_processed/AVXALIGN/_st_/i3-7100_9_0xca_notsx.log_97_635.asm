.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x10948, %rsi
lea addresses_A_ht+0x18148, %rdi
clflush (%rdi)
nop
nop
nop
and $57394, %r9
mov $15, %rcx
rep movsq
xor %rsi, %rsi
lea addresses_UC_ht+0xe528, %r11
nop
add $41369, %rbx
movups (%r11), %xmm3
vpextrq $0, %xmm3, %rdx
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x14144, %rcx
nop
dec %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
and $42917, %r11
lea addresses_D_ht+0xc898, %rsi
nop
nop
nop
nop
cmp $52713, %rdi
mov (%rsi), %bx
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rdx
push %rsi

// Store
mov $0x52750000000ad8, %r12
nop
nop
nop
sub $62448, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r12)
nop
nop
inc %r12

// Load
lea addresses_PSE+0x13148, %rsi
nop
nop
add %r14, %r14
movaps (%rsi), %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
sub %r14, %r14

// Store
lea addresses_RW+0x1a8c8, %r14
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_normal+0x4178, %r9
nop
nop
xor $12089, %r14
mov $0x5152535455565758, %r8
movq %r8, (%r9)
nop
inc %r14

// Store
lea addresses_WC+0x1bc48, %rdx
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movb $0x51, (%rdx)
nop
add %rbp, %rbp

// Faulty Load
lea addresses_PSE+0x13148, %rdx
nop
nop
inc %r9
mov (%rdx), %r14w
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'33': 97}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/

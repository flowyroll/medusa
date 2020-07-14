.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x153b7, %rsi
lea addresses_UC_ht+0x1c017, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $121, %rcx
rep movsb
nop
nop
xor $34089, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x5ff7, %r9
nop
nop
nop
nop
nop
and %r13, %r13
movw $0x5152, (%r9)
nop
nop
nop
nop
sub $1571, %rbx

// Store
lea addresses_PSE+0x187b7, %r13
nop
xor %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r13)
nop
and $15726, %rbp

// REPMOV
lea addresses_A+0xb7b7, %rsi
mov $0x683e410000000bd7, %rdi
nop
cmp $3587, %r11
mov $59, %rcx
rep movsb
nop
nop
nop
sub $28985, %rbx

// Store
lea addresses_US+0xb77, %r10
nop
dec %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%r10)
nop
nop
inc %rbp

// Store
lea addresses_normal+0x76bd, %rcx
nop
nop
nop
add $24487, %r13
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
add $3026, %r13

// Faulty Load
lea addresses_D+0x1dfb7, %r9
clflush (%r9)
cmp $59538, %rbp
mov (%r9), %cx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'36': 1}
36
*/

.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1129d, %rsi
lea addresses_WC_ht+0x174ad, %rdi
nop
nop
sub $34165, %rdx
mov $84, %rcx
rep movsb
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0xc51d, %rsi
lea addresses_normal_ht+0xb91d, %rdi
nop
sub %r8, %r8
mov $89, %rcx
rep movsb
nop
nop
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rbx
push %rdi
push %rsi

// Store
lea addresses_US+0x1a2d1, %r11
nop
add $21662, %r15
movw $0x5152, (%r11)
nop
nop
nop
sub $16945, %rbx

// Store
lea addresses_PSE+0xc01a, %rbx
nop
nop
nop
nop
xor %r9, %r9
movl $0x51525354, (%rbx)
add %r9, %r9

// Store
mov $0x71d, %rsi
nop
inc %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rsi)

// Exception!!!
nop
nop
mov (0), %r11
add $50480, %rbx

// Store
lea addresses_A+0x4f1d, %r15
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movl $0x51525354, (%r15)
nop
nop
nop
nop
and $37887, %r12

// Faulty Load
lea addresses_PSE+0x1e11d, %rbx
nop
nop
nop
nop
xor %r15, %r15
movb (%rbx), %r9b
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'33': 36}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/

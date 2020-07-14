.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x4d7c, %rdi
nop
and %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0xf2dd, %r13
sub $38104, %r12
movb $0x61, (%r13)
nop
nop
nop
nop
nop
xor $65037, %r12
lea addresses_WC_ht+0x19e2c, %rsi
lea addresses_UC_ht+0x95e4, %rdi
and %r10, %r10
mov $67, %rcx
rep movsb
nop
sub $63300, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx

// Store
mov $0x1c32a20000000cbc, %r11
nop
nop
and %rbp, %rbp
movb $0x51, (%r11)
nop
xor $53865, %rbx

// Store
lea addresses_D+0x1fa48, %rbx
nop
nop
nop
nop
xor %r15, %r15
movb $0x51, (%rbx)
nop
nop
and $47376, %rax

// Store
mov $0x54c, %rbx
nop
nop
and $23356, %r9
movl $0x51525354, (%rbx)
nop
cmp %rbp, %rbp

// Store
lea addresses_RW+0x8b2c, %r15
nop
xor %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r15)
dec %rcx

// Store
lea addresses_WT+0x1ba2c, %rbx
nop
cmp %r9, %r9
movb $0x51, (%rbx)
nop
nop
nop
nop
sub $22982, %rcx

// Store
lea addresses_UC+0x222c, %r15
nop
xor $58157, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
and $0xffffffffffffffc0, %r15
vmovaps %ymm4, (%r15)
nop
nop
nop
nop
xor %rax, %rax

// Faulty Load
lea addresses_A+0x6e2c, %rbp
nop
nop
nop
nop
nop
xor $50692, %r11
mov (%rbp), %ecx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'00': 5}
00 00 00 00 00
*/

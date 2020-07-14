.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xca89, %r15
nop
nop
nop
nop
inc %rbx
movl $0x61626364, (%r15)
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x1a049, %rsi
lea addresses_WC_ht+0x1e589, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $74, %rcx
rep movsb
nop
and %rdi, %rdi
lea addresses_UC_ht+0x7709, %rsi
cmp %rcx, %rcx
mov (%rsi), %ebx
nop
nop
nop
and %r10, %r10
lea addresses_UC_ht+0xd409, %r15
clflush (%r15)
nop
nop
and $54744, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r15)
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1d189, %rdi
add %rcx, %rcx
movb $0x61, (%rdi)
cmp %rsi, %rsi
lea addresses_A_ht+0x5b01, %rsi
lea addresses_WT_ht+0xfe69, %rdi
sub $7682, %rdx
mov $58, %rcx
rep movsw
and $10314, %rdx
lea addresses_D_ht+0xf765, %rsi
lea addresses_normal_ht+0x1b009, %rdi
clflush (%rsi)
nop
nop
xor $16261, %r10
mov $28, %rcx
rep movsq
nop
nop
nop
nop
add %r13, %r13
lea addresses_normal_ht+0x11049, %rsi
lea addresses_UC_ht+0x1a781, %rdi
nop
cmp %r15, %r15
mov $120, %rcx
rep movsw
nop
dec %rcx
lea addresses_D_ht+0xc44d, %r13
nop
nop
nop
nop
nop
add %rcx, %rcx
movb (%r13), %bl
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x18109, %rdx
nop
nop
dec %r15
movw $0x6162, (%rdx)
nop
and $18757, %r13
lea addresses_WT_ht+0xaa89, %rsi
lea addresses_A_ht+0x53c9, %rdi
nop
nop
dec %r13
mov $13, %rcx
rep movsb
nop
nop
cmp $53775, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbp
push %rdi
push %rdx
push %rsi

// Faulty Load
lea addresses_UC+0x1d809, %rsi
nop
nop
nop
and %rdx, %rdx
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %rbp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}}
{'00': 3634}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

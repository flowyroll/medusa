.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x135b, %r12
clflush (%r12)
nop
nop
inc %rdi
movb $0x61, (%r12)
nop
nop
nop
xor $63599, %rax
lea addresses_UC_ht+0xffa7, %r11
nop
nop
nop
nop
nop
add $20337, %rax
movb $0x61, (%r11)
nop
nop
nop
nop
xor $29723, %rdi
lea addresses_UC_ht+0xe887, %rsi
lea addresses_UC_ht+0x167c7, %rdi
nop
xor $58992, %rbp
mov $42, %rcx
rep movsq
nop
nop
xor $44064, %rax
lea addresses_WC_ht+0xb257, %r11
nop
nop
nop
sub $28375, %rbp
movb $0x61, (%r11)
add $55680, %r10
lea addresses_D_ht+0x1ae9d, %rbp
nop
nop
and %r10, %r10
mov (%rbp), %esi
nop
nop
nop
nop
nop
dec %rax
lea addresses_UC_ht+0x10887, %r11
nop
nop
nop
xor $58536, %r12
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
and $50339, %rcx
lea addresses_WT_ht+0x14b77, %rsi
lea addresses_normal_ht+0x11eb7, %rdi
sub %r11, %r11
mov $83, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0xc087, %rsi
nop
xor $56668, %rbp
mov (%rsi), %rcx
nop
nop
nop
cmp $8603, %rax
lea addresses_WT_ht+0x19de7, %rsi
lea addresses_UC_ht+0x1d387, %rdi
nop
nop
nop
nop
and $34176, %r10
mov $106, %rcx
rep movsw
nop
nop
nop
nop
nop
add $21750, %rbp
lea addresses_D_ht+0xa187, %r11
nop
nop
nop
inc %rdi
movw $0x6162, (%r11)
inc %r10
lea addresses_UC_ht+0x2fb7, %rax
nop
nop
nop
nop
xor $33504, %rsi
movw $0x6162, (%rax)
nop
nop
and $36804, %rdi
lea addresses_D_ht+0x11e87, %r10
clflush (%r10)
and $16260, %r11
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r10)
nop
and $5689, %rbp
lea addresses_WC_ht+0x19687, %r11
nop
add $47034, %rdi
vmovups (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
and %r11, %r11
lea addresses_WC_ht+0x69c7, %rsi
lea addresses_WC_ht+0xa887, %rdi
nop
xor %r10, %r10
mov $124, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r10
lea addresses_A_ht+0x105af, %rsi
lea addresses_D_ht+0x1885a, %rdi
clflush (%rdi)
nop
and $27689, %r12
mov $98, %rcx
rep movsb
nop
nop
nop
nop
cmp $39655, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rcx

// Store
lea addresses_D+0x5687, %r14
nop
inc %rbp
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
add $21953, %rcx

// Load
lea addresses_UC+0xbf, %rbx
clflush (%rbx)
nop
nop
nop
xor $16728, %r15
movb (%rbx), %cl
cmp $56887, %rbp

// Store
lea addresses_UC+0x687, %r11
clflush (%r11)
nop
nop
nop
and $44113, %rcx
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
dec %rbp

// Load
lea addresses_WC+0x12f9a, %r8
sub %rcx, %rcx
movups (%r8), %xmm3
vpextrq $0, %xmm3, %r15
nop
nop
nop
nop
nop
add $48773, %r11

// Store
lea addresses_PSE+0x3f07, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor $43580, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rcx)
nop
inc %rcx

// Faulty Load
lea addresses_UC+0x687, %rcx
nop
nop
nop
and $31121, %rbx
mov (%rcx), %bp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/

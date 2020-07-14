.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1b879, %rdx
nop
nop
nop
nop
nop
add %r8, %r8
and $0xffffffffffffffc0, %rdx
movaps (%rdx), %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0xaef9, %r9
nop
nop
sub $42138, %rsi
mov (%r9), %r8d
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xa397, %rbx
sub %rbp, %rbp
mov (%rbx), %dx
nop
nop
and $53667, %r8
lea addresses_A_ht+0x6f59, %rsi
lea addresses_normal_ht+0x182f9, %rdi
clflush (%rsi)
cmp $56216, %rdx
mov $75, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $59860, %r8
lea addresses_WT_ht+0x13cb1, %rsi
lea addresses_A_ht+0x19461, %rdi
inc %rbx
mov $39, %rcx
rep movsw
nop
nop
nop
nop
nop
add $31903, %rsi
lea addresses_UC_ht+0xbef9, %rsi
lea addresses_D_ht+0x12659, %rdi
nop
nop
nop
nop
nop
add $30315, %rbp
mov $91, %rcx
rep movsw
nop
nop
nop
sub $11650, %rbx
lea addresses_normal_ht+0x1ea49, %r8
nop
nop
nop
inc %rbx
movups (%r8), %xmm2
vpextrq $0, %xmm2, %r9
nop
and $30387, %r8
lea addresses_D_ht+0x142f9, %rsi
lea addresses_A_ht+0x1d2f9, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $67, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rbx
lea addresses_normal_ht+0x126f9, %rsi
lea addresses_A_ht+0x8979, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $74, %rcx
rep movsl
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x567d, %rsi
nop
nop
nop
nop
add %rbx, %rbx
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add $49445, %rbp
lea addresses_WT_ht+0x78f9, %r8
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r8), %esi
nop
nop
nop
and $3015, %rcx
lea addresses_WC_ht+0x16c45, %rsi
lea addresses_WT_ht+0xf2f9, %rdi
nop
nop
nop
nop
nop
inc %rdx
mov $47, %rcx
rep movsw
nop
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0xd7bd, %rsi
lea addresses_normal_ht+0x1aaf9, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $97, %rcx
rep movsw
nop
nop
nop
add $13275, %r9
lea addresses_normal_ht+0xc6d9, %r8
inc %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
nop
nop
inc %r9
lea addresses_D_ht+0x1ab79, %rdx
nop
add %r9, %r9
mov (%rdx), %rsi
nop
nop
nop
nop
sub $26543, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rbx

// Store
lea addresses_normal+0xfb79, %r9
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
nop
dec %r15

// Store
lea addresses_UC+0x1ec93, %r11
nop
nop
nop
nop
dec %r8
movw $0x5152, (%r11)
add %rbp, %rbp

// Load
lea addresses_UC+0x18af9, %r11
nop
nop
nop
sub $58590, %r12
mov (%r11), %ebx
nop
nop
nop
nop
nop
dec %r12

// Faulty Load
lea addresses_PSE+0x17ef9, %rbp
nop
nop
nop
nop
nop
add %r15, %r15
movb (%rbp), %bl
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/

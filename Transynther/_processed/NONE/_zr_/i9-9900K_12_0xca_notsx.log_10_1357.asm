.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x76c6, %r14
add $21327, %rdi
mov (%r14), %ax
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x17866, %rsi
lea addresses_normal_ht+0xa366, %rdi
nop
nop
sub %rbx, %rbx
mov $0, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x8426, %r12
xor %rbx, %rbx
movb $0x61, (%r12)
nop
nop
nop
nop
nop
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %r9
push %rbp

// Store
lea addresses_WT+0x1c9d1, %r15
nop
nop
nop
nop
nop
and %r9, %r9
movb $0x51, (%r15)
nop
nop
nop
sub $42807, %r13

// Store
lea addresses_WC+0xa5e6, %rbp
nop
nop
sub %r8, %r8
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
inc %r12

// Store
lea addresses_RW+0x13d72, %r12
nop
nop
nop
sub %r8, %r8
movb $0x51, (%r12)
nop
nop
nop
add %r8, %r8

// Store
lea addresses_normal+0x5e6, %r12
nop
add $41492, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%r12)
nop
sub $47309, %r9

// Store
mov $0x70047c0000000fe6, %r11
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%r11)
add %r9, %r9

// Store
lea addresses_normal+0x1fdce, %r15
inc %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%r15)
nop
nop
cmp $10449, %r13

// Faulty Load
lea addresses_A+0x1e9e6, %r8
nop
nop
xor $31418, %r13
movb (%r8), %r15b
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/

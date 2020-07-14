.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x9966, %r13
clflush (%r13)
nop
nop
nop
nop
xor $34717, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r13)
xor $37172, %r11
lea addresses_WC_ht+0xd9c6, %rbx
nop
add $7131, %rcx
movb (%rbx), %r15b
nop
nop
nop
and %r11, %r11
lea addresses_D_ht+0x31a6, %rbx
add $12043, %r15
movw $0x6162, (%rbx)
nop
inc %r13
lea addresses_A_ht+0x16486, %rsi
lea addresses_normal_ht+0x6b66, %rdi
nop
nop
add $4839, %r15
mov $43, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x8096, %r11
nop
nop
nop
sub %rdi, %rdi
and $0xffffffffffffffc0, %r11
vmovntdqa (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0xfc66, %rsi
lea addresses_WT_ht+0x19466, %rdi
dec %rbx
mov $9, %rcx
rep movsw
and $9070, %rcx
lea addresses_D_ht+0x27e6, %r13
nop
nop
nop
add $43346, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x16f66, %rsi
lea addresses_WT_ht+0x1a7a6, %rdi
add $61044, %r15
mov $124, %rcx
rep movsq
nop
nop
nop
nop
cmp $44337, %r11
lea addresses_WC_ht+0x1866, %rdx
nop
dec %r13
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xc666, %r11
cmp %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
sub $16779, %rdx
lea addresses_WT_ht+0x16066, %rdx
nop
nop
and %rcx, %rcx
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x7466, %rsi
nop
nop
nop
nop
add $35946, %r11
movb (%rsi), %cl
nop
cmp %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rdi

// Store
lea addresses_WT+0x3646, %r15
xor $14802, %r13
movw $0x5152, (%r15)
nop
nop
nop
nop
xor $22800, %rax

// Load
lea addresses_UC+0xb2a6, %r14
nop
nop
and $16988, %rdi
movups (%r14), %xmm3
vpextrq $0, %xmm3, %r15
nop
nop
nop
nop
nop
dec %r14

// Store
mov $0x716fdb0000000a86, %rbx
nop
nop
nop
nop
nop
sub %r8, %r8
movb $0x51, (%rbx)
nop
nop
nop
nop
add %rax, %rax

// Load
lea addresses_WT+0xcc98, %rbx
nop
nop
nop
cmp $52015, %r14
mov (%rbx), %r13
nop
nop
xor $18883, %rax

// Store
lea addresses_WT+0x1e66, %rax
nop
nop
nop
nop
nop
cmp $22906, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
add $21538, %r13

// Store
lea addresses_D+0x8c66, %r15
nop
nop
nop
and %r14, %r14
movb $0x51, (%r15)
nop
nop
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_A+0x1f866, %r8
nop
xor $40127, %rax
movups (%r8), %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'46': 9, '00': 21809, '45': 11}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

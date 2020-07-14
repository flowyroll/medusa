.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rax
push %rsi
lea addresses_D_ht+0x96bc, %rsi
nop
nop
sub %r13, %r13
mov (%rsi), %eax
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0xbe0c, %r8
nop
nop
cmp %r11, %r11
mov (%r8), %r12w
nop
nop
nop
nop
add $369, %rax
lea addresses_D_ht+0x5d2c, %r15
nop
nop
nop
nop
xor %r8, %r8
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x182cc, %rax
nop
nop
nop
nop
nop
inc %r11
mov (%rax), %r8d
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x442c, %r11
nop
nop
add $62764, %rsi
movb (%r11), %r13b
nop
inc %r12
pop %rsi
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0xce8c, %r12
nop
nop
xor $46764, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r12)
nop
nop
nop
nop
add $55712, %rbx

// Load
lea addresses_RW+0x73ac, %r8
nop
nop
nop
xor %rbp, %rbp
vmovups (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_UC+0x1a9ec, %rbp
nop
nop
nop
cmp $710, %r14
movw $0x5152, (%rbp)
nop
inc %r8

// REPMOV
lea addresses_PSE+0x128f1, %rsi
mov $0x18cf650000000eac, %rdi
nop
nop
nop
nop
inc %r8
mov $54, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $47964, %r8

// Faulty Load
lea addresses_WT+0xe82c, %r14
sub $30249, %rdi
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_PSE', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_NC', 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'00': 2, '46': 2}
46 00 46 00
*/

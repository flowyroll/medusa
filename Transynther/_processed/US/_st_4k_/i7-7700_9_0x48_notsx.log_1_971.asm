.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x8f66, %r12
nop
nop
nop
nop
nop
dec %rbp
movb (%r12), %al
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x1ac26, %r14
nop
nop
cmp %r15, %r15
mov (%r14), %eax
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0xa696, %rbp
nop
sub %rax, %rax
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
nop
xor $7697, %rax
lea addresses_normal_ht+0x2c0a, %rsi
lea addresses_A_ht+0x9c66, %rdi
nop
nop
nop
add $6775, %rbp
mov $122, %rcx
rep movsb
nop
nop
nop
add $58417, %rdi
lea addresses_UC_ht+0x19c66, %rcx
nop
nop
nop
nop
nop
xor %r14, %r14
movb (%rcx), %r12b
nop
nop
and $34426, %rbp
lea addresses_UC_ht+0x17b12, %r12
nop
and $30633, %r14
movups (%r12), %xmm3
vpextrq $1, %xmm3, %r15
cmp %rcx, %rcx
lea addresses_WC_ht+0x1722e, %r15
nop
nop
nop
cmp %r11, %r11
mov (%r15), %r12w
nop
nop
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xfe86, %r8
nop
add %rdi, %rdi
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
sub $62120, %rdx

// Store
mov $0x78c8100000000f8, %r14
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
nop
inc %r8

// Load
lea addresses_UC+0x6268, %r14
nop
cmp $3086, %rsi
mov (%r14), %dx
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_UC+0x6c66, %rdi
nop
nop
nop
nop
nop
cmp $23423, %r12
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
nop
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_PSE+0xec66, %rcx
nop
nop
xor %r14, %r14
movb $0x51, (%rcx)
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_US+0xac66, %r12
nop
and $51222, %r14
mov (%r12), %di
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 1}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_PSE', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'dst': {'same': True, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'51': 1}
51
*/

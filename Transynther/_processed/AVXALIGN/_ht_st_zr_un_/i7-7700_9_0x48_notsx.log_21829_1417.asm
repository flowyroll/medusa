.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x11764, %rbp
nop
add %rbx, %rbx
mov (%rbp), %r11w
sub %r12, %r12
lea addresses_UC_ht+0x6364, %r8
nop
nop
nop
nop
nop
xor $25724, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
nop
add $16600, %r11
lea addresses_UC_ht+0x16084, %rsi
lea addresses_A_ht+0x19b44, %rdi
nop
nop
nop
nop
dec %r13
mov $1, %rcx
rep movsb
nop
nop
nop
add $49234, %rbp
lea addresses_WC_ht+0x1b764, %rsi
lea addresses_WT_ht+0x58e4, %rdi
nop
nop
nop
add $9089, %r11
mov $83, %rcx
rep movsl
sub $38314, %rbp
lea addresses_UC_ht+0x176e4, %rsi
lea addresses_UC_ht+0x11324, %rdi
clflush (%rdi)
nop
nop
sub %rbx, %rbx
mov $24, %rcx
rep movsb
nop
nop
nop
nop
nop
and $36800, %r13
lea addresses_normal_ht+0x2ae4, %rbp
nop
nop
nop
nop
nop
dec %rcx
mov (%rbp), %di
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0x1e6e4, %rsi
lea addresses_D_ht+0xd6e4, %rdi
nop
nop
nop
inc %rbx
mov $40, %rcx
rep movsw
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x10ae4, %rsi
lea addresses_normal_ht+0xf8e4, %rdi
and $31586, %rbx
mov $38, %rcx
rep movsb
xor $22054, %rdi
lea addresses_WC_ht+0x2ae4, %r8
nop
nop
and %rsi, %rsi
mov (%r8), %r11w
nop
nop
nop
add $53697, %r11
lea addresses_WC_ht+0x116e4, %rbx
clflush (%rbx)
nop
nop
nop
xor %rsi, %rsi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
cmp $39152, %rcx
lea addresses_D_ht+0x116e4, %r11
nop
nop
dec %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r11)
nop
cmp $9932, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x1f474, %r14
nop
nop
cmp $28443, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r14)
nop
nop
dec %r8

// Store
lea addresses_A+0x60e4, %r13
nop
cmp $49009, %r15
movw $0x5152, (%r13)
nop
nop
nop
add $38414, %r8

// REPMOV
lea addresses_D+0x19ee4, %rsi
lea addresses_A+0x10844, %rdi
nop
nop
nop
cmp %r14, %r14
mov $78, %rcx
rep movsl
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_A+0xaee4, %r15
clflush (%r15)
nop
nop
nop
inc %r9
vmovaps (%r15), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'89': 1, '36': 66, '48': 5, '08': 1, '49': 1, '45': 71, '30': 45, 'fe': 1, '00': 21638}
36 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 89 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 30 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x10b1a, %r13
nop
nop
inc %r15
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0xef8, %rsi
lea addresses_UC_ht+0x146cc, %rdi
nop
cmp $51596, %r13
mov $17, %rcx
rep movsq
nop
xor %r13, %r13
lea addresses_A_ht+0xff4c, %rsi
lea addresses_normal_ht+0x4834, %rdi
dec %r8
mov $112, %rcx
rep movsw
nop
nop
add $14828, %rsi
lea addresses_WC_ht+0xe74c, %rbp
nop
nop
nop
nop
nop
cmp $27460, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0xbb4c, %rcx
nop
inc %rax
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
nop
nop
nop
sub $46467, %rbp
lea addresses_UC_ht+0xbd40, %rdi
dec %rcx
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0x2a8c, %r8
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
cmp $65517, %rax
lea addresses_D_ht+0xdec, %rdi
nop
nop
nop
nop
inc %rbp
mov (%rdi), %r13
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x678c, %rsi
nop
nop
add $51746, %r13
mov (%rsi), %r15
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x1696a, %r13
nop
sub $38817, %rcx
mov (%r13), %r15w
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x324c, %rsi
lea addresses_UC_ht+0x1740, %rdi
clflush (%rdi)
add $36992, %r13
mov $105, %rcx
rep movsb
nop
xor %rax, %rax
lea addresses_A_ht+0x18b2c, %rdi
nop
add %rsi, %rsi
movl $0x61626364, (%rdi)
inc %rax
lea addresses_WT_ht+0x13f4c, %r13
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
nop
nop
nop
xor $54936, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdx

// Store
lea addresses_WT+0x1c094, %r13
xor %r15, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r13)
nop
nop
nop
cmp $44257, %rbp

// Store
lea addresses_normal+0x1ed4c, %rbp
nop
nop
nop
nop
and $48137, %r8
movl $0x51525354, (%rbp)
nop
nop
nop
xor $17643, %rdx

// Store
lea addresses_normal+0x674c, %rbp
nop
nop
nop
nop
xor %rdx, %rdx
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
sub %r9, %r9

// Faulty Load
lea addresses_UC+0x9f4c, %r15
nop
nop
nop
nop
nop
dec %rbp
movntdqa (%r15), %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'45': 350, '46': 4004, '49': 11965, '00': 1587, '08': 1, '47': 3, '44': 3919}
00 46 44 00 49 49 49 44 49 44 46 49 00 49 49 44 44 46 49 45 49 46 44 00 49 46 49 44 44 46 49 49 44 49 44 44 49 49 49 49 46 49 49 49 46 49 46 49 49 49 44 44 49 44 44 49 46 44 49 45 49 46 49 46 49 00 49 44 49 46 49 46 49 46 49 49 46 49 49 49 46 49 46 49 46 49 46 44 49 00 44 49 44 49 44 49 44 46 49 46 49 00 49 49 46 49 49 44 49 00 49 44 46 49 46 49 46 49 46 49 00 46 49 46 49 49 46 44 00 49 44 49 44 44 49 46 49 45 49 00 49 49 46 49 00 44 00 49 49 49 49 49 49 44 45 49 49 46 49 44 44 49 49 49 46 44 46 49 00 49 44 44 49 44 44 44 46 44 44 44 49 49 44 45 49 00 49 49 00 49 45 49 49 46 49 46 49 44 44 44 44 49 46 44 44 49 00 49 49 44 44 00 49 44 49 49 46 49 49 46 49 46 49 46 49 46 49 46 49 44 45 44 44 44 49 49 49 44 49 00 46 49 44 49 46 49 00 44 44 46 49 49 46 44 46 49 00 44 49 44 44 46 49 49 49 46 49 49 46 49 44 49 46 44 44 49 44 49 47 46 49 46 44 44 46 44 49 46 44 49 46 49 00 44 49 46 49 46 49 49 44 46 44 46 44 49 49 44 46 44 49 44 45 49 49 46 49 49 44 49 44 49 00 49 44 49 49 46 49 49 44 46 49 46 49 46 44 44 44 49 49 49 49 49 49 49 49 49 44 49 00 49 46 49 46 49 49 49 46 44 46 49 46 49 49 49 49 49 44 00 49 44 44 49 46 49 00 49 49 49 44 49 49 45 49 46 49 00 49 49 49 49 44 46 49 45 49 49 49 49 46 49 49 44 44 46 49 49 49 44 49 44 49 49 49 44 46 44 46 44 00 49 49 44 44 49 49 44 44 46 49 44 49 44 44 44 49 46 44 49 49 49 44 49 46 44 44 44 46 44 44 44 49 46 49 45 49 00 49 46 49 46 49 46 49 46 49 00 44 49 49 44 49 49 46 49 49 44 49 49 49 00 44 49 49 49 46 49 46 44 49 49 49 49 49 46 49 45 49 49 46 49 46 49 46 44 46 49 49 49 46 44 44 49 49 49 49 49 49 49 49 46 49 00 44 00 49 44 44 44 49 44 44 45 49 49 49 44 49 44 49 44 46 49 46 49 46 49 46 49 46 49 49 49 49 46 49 49 49 44 49 49 46 49 46 49 46 49 00 44 49 49 46 44 44 49 49 49 46 49 44 49 44 00 44 00 46 44 44 46 49 46 49 44 44 44 44 44 44 49 00 46 49 46 49 00 44 44 46 44 44 44 45 49 46 49 46 49 46 44 44 46 49 46 49 45 49 44 44 44 49 44 49 49 44 44 44 44 44 44 44 44 44 46 49 46 49 44 44 46 44 49 46 49 46 49 46 49 44 46 49 49 49 49 44 44 46 44 46 49 00 46 49 44 44 44 00 45 49 49 49 49 00 49 44 46 49 46 49 00 44 00 46 49 44 44 00 49 49 46 49 00 44 00 49 46 49 49 44 46 49 46 44 44 49 49 49 44 45 49 46 49 46 49 44 49 46 49 49 00 46 49 46 44 00 44 44 44 44 44 49 44 49 49 00 44 49 46 49 44 46 49 49 46 44 44 49 44 49 46 44 44 49 00 44 49 44 49 00 46 49 44 49 49 46 49 49 49 44 49 00 49 49 49 46 49 44 44 45 49 46 49 49 49 45 44 49 49 49 46 49 44 49 46 49 46 49 46 49 00 46 49 44 46 49 49 49 44 49 49 49 44 49 49 49 46 46 49 46 49 49 49 49 46 49 46 44 49 49 00 46 49 44 46 49 49 46 44 49 44 44 44 44 49 46 49 00 44 44 49 44 49 49 49 49 49 49 00 49 49 00 49 49 44 49 00 49 49 00 44 49 45 49 46 44 46 49 00 49 00 49 46 00 49 49 44 49 00 49 00 49 49 46 49 49 49 44 49 46 49 46 49 46 49 00 49 45 49 49 49 49 49 49 46 49 00 44 46 49 49 49 49 45 44 46 49 49 44 49 46 44 44 49 49 49 46 44 49 49 46 49 00 44 00 49 49 46 49 49 49 49 49 00 49 46 49 49 49 49 49 46 49 49 49 49 44 49 46 49 46 49 46 44 46 49 44 49 46 49 46 49 46 49 46 49 45 49 44 46 49
*/

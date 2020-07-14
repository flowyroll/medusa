.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x11912, %rsi
lea addresses_normal_ht+0x16312, %rdi
clflush (%rsi)
nop
nop
nop
xor %rax, %rax
mov $35, %rcx
rep movsb
nop
and $10761, %rbx
lea addresses_A_ht+0x1dd92, %rcx
nop
add %r14, %r14
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
nop
nop
dec %r14
lea addresses_D_ht+0x998a, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
mfence
lea addresses_WT_ht+0xf342, %rsi
lea addresses_normal_ht+0x1e42c, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %rbp
mov $96, %rcx
rep movsl
nop
nop
nop
nop
and $34549, %rsi
lea addresses_WC_ht+0xd712, %r14
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %r14
vmovntdq %ymm6, (%r14)
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x12b12, %rbp
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x61, (%rbp)
nop
and $59, %rsi
lea addresses_D_ht+0x194a2, %rsi
lea addresses_UC_ht+0x159e2, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %r15, %r15
mov $106, %rcx
rep movsb
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1b4d2, %r15
nop
nop
nop
add %rbx, %rbx
mov (%r15), %eax
nop
xor %rdi, %rdi
lea addresses_A_ht+0x6b12, %rsi
nop
nop
nop
nop
add %rbp, %rbp
mov (%rsi), %r14
nop
nop
nop
nop
and $24153, %rcx
lea addresses_UC_ht+0x645a, %rbx
nop
add %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x1e52, %rdi
add $59560, %r15
mov (%rdi), %eax
nop
inc %rax
lea addresses_A_ht+0x13932, %rbp
nop
nop
nop
xor $39402, %rdi
vmovups (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
nop
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_RW+0x1369a, %rcx
cmp %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movntdq %xmm4, (%rcx)
nop
add %rbp, %rbp

// Store
lea addresses_normal+0x1e522, %rsi
clflush (%rsi)
nop
nop
nop
sub %r8, %r8
movw $0x5152, (%rsi)
nop
nop
nop
and $6349, %rcx

// Store
mov $0x56162e0000000f12, %r8
sub $38568, %r10
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
inc %rsi

// Store
mov $0x312, %rbp
clflush (%rbp)
nop
nop
sub $40986, %r10
movb $0x51, (%rbp)
nop
nop
nop
nop
cmp $42647, %r8

// Faulty Load
lea addresses_US+0xdb12, %r8
clflush (%r8)
nop
nop
nop
cmp $56767, %rbp
mov (%r8), %esi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 5}}
{'00': 101}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

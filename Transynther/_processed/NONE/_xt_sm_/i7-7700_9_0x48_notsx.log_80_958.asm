.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xca0, %r10
nop
nop
nop
xor %rdi, %rdi
movb $0x61, (%r10)
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0xa3a0, %rcx
nop
add %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x1c4a0, %rbx
nop
sub $434, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
dec %rbp
lea addresses_A_ht+0x154a0, %rsi
lea addresses_D_ht+0x1b0a0, %rdi
nop
nop
nop
nop
xor $19719, %rdx
mov $119, %rcx
rep movsw
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x84a0, %rsi
lea addresses_normal_ht+0x158a0, %rdi
nop
and %rbx, %rbx
mov $54, %rcx
rep movsl
nop
sub $10735, %rsi
lea addresses_D_ht+0x124a0, %rbp
nop
nop
and %rcx, %rcx
movw $0x6162, (%rbp)
nop
nop
xor %r8, %r8
lea addresses_D_ht+0xe0a0, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov (%rdi), %rcx
nop
nop
nop
nop
cmp $51724, %r10
lea addresses_WC_ht+0x3e41, %r8
cmp %rdi, %rdi
vmovups (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
nop
and %rcx, %rcx
lea addresses_WT_ht+0xfc48, %rsi
lea addresses_A_ht+0xf8a0, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $66, %rcx
rep movsq
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x41e0, %rdx
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r10
movq %r10, (%rdx)
nop
dec %rbx
lea addresses_D_ht+0x13ca0, %rbx
nop
nop
nop
nop
nop
cmp $51443, %rsi
vmovups (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0xc8be, %rcx
nop
nop
nop
nop
add $29555, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
dec %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x102a0, %r12
clflush (%r12)
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
dec %rsi

// Store
lea addresses_RW+0xca0, %rbx
cmp %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, (%rbx)
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_RW+0xca0, %rsi
nop
nop
nop
add %rdi, %rdi
movw $0x5152, (%rsi)
nop
nop
xor %rsi, %rsi

// Load
lea addresses_PSE+0x164a0, %r12
nop
nop
nop
nop
add $53103, %rcx
movups (%r12), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_RW+0xca0, %rdi
nop
and $53412, %rcx
movb (%rdi), %r13b
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'52': 80}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/

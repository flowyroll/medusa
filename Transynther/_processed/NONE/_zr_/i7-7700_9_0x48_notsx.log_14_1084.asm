.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xddb2, %r12
nop
nop
nop
nop
cmp $527, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
nop
and $41080, %r14
lea addresses_WC_ht+0x1cbb2, %r10
nop
add %r11, %r11
movw $0x6162, (%r10)
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x1d9b2, %rsi
lea addresses_WT_ht+0x113b2, %rdi
nop
sub $31834, %rax
mov $41, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0xe502, %rsi
lea addresses_WT_ht+0x9b9a, %rdi
nop
nop
and $6749, %r11
mov $1, %rcx
rep movsq
nop
xor $63518, %rbx
lea addresses_normal_ht+0x125d2, %rax
nop
nop
sub $11040, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm4
and $0xffffffffffffffc0, %rax
vmovntdq %ymm4, (%rax)
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x19bb2, %rsi
lea addresses_WT_ht+0xe3b2, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $69, %rcx
rep movsw
nop
nop
nop
nop
nop
and $17175, %rdi
lea addresses_D_ht+0x150fa, %rsi
lea addresses_A_ht+0x197b2, %rdi
nop
nop
nop
add $47815, %r12
mov $1, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xcf8c, %r14
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r14)
nop
nop
inc %rsi
lea addresses_WT_ht+0xb0d4, %r10
nop
nop
nop
nop
nop
add $20162, %rbx
movb (%r10), %cl
nop
nop
nop
cmp $45088, %r10
lea addresses_WC_ht+0x2332, %rax
nop
nop
nop
nop
and $42160, %rbx
movups (%rax), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
nop
xor $32358, %rcx
lea addresses_WT_ht+0xdc7e, %r14
nop
nop
xor $11420, %rdi
mov (%r14), %rsi
nop
nop
nop
add $61285, %rcx
lea addresses_UC_ht+0x1afb2, %r10
nop
and %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %r10
movntdq %xmm5, (%r10)
nop
xor %rax, %rax
lea addresses_WC_ht+0x17352, %rdi
nop
add $9330, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
and $0xffffffffffffffc0, %rdi
movntdq %xmm4, (%rdi)
nop
sub $52250, %rax
lea addresses_D_ht+0x8eb2, %rsi
lea addresses_normal_ht+0xcab2, %rdi
nop
nop
nop
nop
nop
inc %r10
mov $5, %rcx
rep movsl
nop
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_RW+0x1c3b2, %rcx
nop
nop
nop
inc %rsi
movw $0x5152, (%rcx)
nop
nop
nop
add %r14, %r14

// Load
lea addresses_A+0xeb12, %r15
nop
nop
add %rax, %rax
mov (%r15), %rsi
nop
nop
sub $26474, %r15

// Store
lea addresses_D+0xec42, %rcx
nop
add $11713, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movaps %xmm5, (%rcx)
nop
nop
xor $60838, %rcx

// Store
lea addresses_WC+0xd4af, %rax
nop
nop
nop
xor $17654, %r15
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
xor $1965, %r9

// Store
lea addresses_UC+0x1595c, %r12
nop
nop
nop
nop
nop
xor %r15, %r15
movb $0x51, (%r12)
nop
add $17580, %rsi

// Faulty Load
lea addresses_A+0x1d7b2, %r12
nop
nop
nop
nop
sub $2974, %r14
mov (%r12), %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 5}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_D', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

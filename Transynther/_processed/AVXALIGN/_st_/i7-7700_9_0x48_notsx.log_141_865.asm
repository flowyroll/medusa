.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xac37, %rsi
lea addresses_WT_ht+0x10c1f, %rdi
nop
nop
dec %rbp
mov $23, %rcx
rep movsl
nop
nop
nop
and $55701, %rcx
lea addresses_A_ht+0x1b5f, %rcx
nop
add $11342, %r12
mov (%rcx), %bx
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x2cdf, %rbx
nop
nop
nop
nop
nop
and $42556, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x4def, %r12
nop
nop
nop
nop
nop
sub $39043, %r15
movb $0x61, (%r12)
nop
nop
nop
nop
nop
lfence
lea addresses_A_ht+0xe2df, %rbp
nop
nop
nop
nop
xor %r15, %r15
and $0xffffffffffffffc0, %rbp
vmovaps (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
cmp $29885, %rbp
lea addresses_WC_ht+0x1a55f, %r15
nop
nop
nop
nop
sub $38204, %rsi
mov (%r15), %ebx
nop
and $7510, %rsi
lea addresses_D_ht+0x1aedf, %rbp
nop
nop
nop
nop
and $16332, %rdi
mov (%rbp), %r15w
sub $22634, %rsi
lea addresses_WT_ht+0x4edf, %rcx
nop
and $49305, %r15
mov (%rcx), %si
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x18eb1, %rsi
lea addresses_WC_ht+0x1f4f, %rdi
inc %r14
mov $70, %rcx
rep movsl
nop
nop
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi

// Store
mov $0x42ce1600000002df, %rdi
nop
nop
nop
nop
and $17652, %rbx
movb $0x51, (%rdi)
nop
nop
sub $12324, %rdi

// Store
mov $0xa1f, %r14
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
nop
add $12243, %r11

// Faulty Load
lea addresses_WT+0x56df, %rcx
nop
nop
nop
dec %rdi
mov (%rcx), %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'39': 141}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/

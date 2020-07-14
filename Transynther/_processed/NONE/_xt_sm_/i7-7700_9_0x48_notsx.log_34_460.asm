.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x134fd, %rsi
lea addresses_WT_ht+0x6f8d, %rdi
nop
nop
nop
sub $33591, %r14
mov $73, %rcx
rep movsl
nop
nop
and $18756, %rbx
lea addresses_normal_ht+0x176cd, %rsi
lea addresses_normal_ht+0x90d, %rdi
nop
cmp %r10, %r10
mov $42, %rcx
rep movsb
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x815, %rsi
dec %r12
movb $0x61, (%rsi)
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x1750d, %rcx
nop
nop
nop
nop
xor $23364, %rbx
mov (%rcx), %di
xor $53450, %rbx
lea addresses_UC_ht+0xdcad, %r12
nop
nop
nop
nop
add $58630, %r10
mov (%r12), %r14d
nop
inc %r14
lea addresses_UC_ht+0x18b8d, %rsi
lea addresses_D_ht+0x1208d, %rdi
clflush (%rdi)
dec %r12
mov $89, %rcx
rep movsw
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x1516d, %rbx
nop
cmp %r14, %r14
movb (%rbx), %r10b
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1858d, %rsi
lea addresses_WC_ht+0x2f6d, %rdi
nop
nop
sub $45422, %r12
mov $63, %rcx
rep movsq
dec %r12
lea addresses_D_ht+0x1758d, %rdi
nop
nop
nop
mfence
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
dec %rbx
lea addresses_D_ht+0x1de8d, %r14
nop
nop
nop
nop
add $17147, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
inc %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
mov $0xf65, %r15
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movaps %xmm7, (%r15)
nop
inc %rcx

// Load
lea addresses_PSE+0xc97d, %rax
nop
nop
nop
nop
nop
and %rbp, %rbp
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
dec %r11

// Store
lea addresses_US+0x11445, %rbp
nop
nop
nop
sub %rax, %rax
movw $0x5152, (%rbp)
nop
sub %rcx, %rcx

// Store
lea addresses_PSE+0x1858d, %rcx
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovaps %ymm4, (%rcx)
nop
inc %rdi

// Store
lea addresses_US+0x1698d, %rdi
dec %r11
movl $0x51525354, (%rdi)
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_PSE+0x1858d, %rax
nop
nop
nop
nop
xor %r11, %r11
movb (%rax), %r9b
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_P', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'58': 34}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/

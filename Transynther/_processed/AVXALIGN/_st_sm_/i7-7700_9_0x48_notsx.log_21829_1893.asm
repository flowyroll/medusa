.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1ae37, %rsi
lea addresses_normal_ht+0x11eaf, %rdi
nop
nop
nop
add $41615, %rbp
mov $63, %rcx
rep movsw
nop
nop
sub $17822, %rcx
lea addresses_UC_ht+0x10237, %rsi
lea addresses_D_ht+0xa7af, %rdi
nop
nop
nop
nop
nop
and %r11, %r11
mov $113, %rcx
rep movsb
nop
nop
nop
nop
lfence
lea addresses_A_ht+0x1139b, %rsi
lea addresses_normal_ht+0x178a7, %rdi
nop
nop
nop
nop
nop
sub $47584, %rdx
mov $0, %rcx
rep movsb
nop
nop
xor $43563, %rbp
lea addresses_UC_ht+0x6ccf, %r11
nop
nop
nop
nop
inc %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0xfaaf, %rsi
lea addresses_UC_ht+0x1ea2f, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $89, %rcx
rep movsw
nop
nop
cmp $8886, %r11
lea addresses_normal_ht+0x11727, %rcx
add $57259, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm5, (%rcx)
nop
nop
nop
nop
nop
cmp $63362, %rbp
lea addresses_normal_ht+0x1442f, %rsi
lea addresses_UC_ht+0x402f, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $76, %rcx
rep movsl
nop
nop
nop
cmp $18853, %rcx
lea addresses_A_ht+0x14e2b, %rsi
lea addresses_UC_ht+0xc2f, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $6, %rcx
rep movsb
cmp $58027, %rdx
lea addresses_WC_ht+0x1a6ef, %rsi
lea addresses_WC_ht+0x8f4b, %rdi
nop
sub $32300, %rdx
mov $66, %rcx
rep movsb
nop
nop
nop
nop
add $12523, %rdi
lea addresses_A_ht+0x17b0f, %rdx
nop
nop
inc %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm7
and $0xffffffffffffffc0, %rdx
vmovaps %ymm7, (%rdx)
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x1e7, %rbp
nop
add $37484, %r12
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x17817, %rbp
add %r11, %r11
movb $0x61, (%rbp)
nop
nop
cmp $2911, %rdx
lea addresses_WT_ht+0xb22f, %rsi
lea addresses_D_ht+0x1acaf, %rdi
nop
add $8835, %r11
mov $9, %rcx
rep movsl
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x1a017, %rdx
nop
nop
nop
sub $5293, %r12
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
nop
nop
nop
add $6676, %rbx
lea addresses_D_ht+0x1c9af, %r11
nop
nop
add $29518, %rsi
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x4af, %rsi
lea addresses_normal+0x43f7, %rdi
nop
nop
inc %r8
mov $123, %rcx
rep movsw
nop
nop
sub $24673, %rbp

// REPMOV
lea addresses_WC+0x61af, %rsi
lea addresses_UC+0x9cff, %rdi
nop
nop
nop
nop
nop
add $56084, %rax
mov $97, %rcx
rep movsw
nop
nop
and %rbx, %rbx

// Store
lea addresses_A+0x1a6af, %r8
nop
xor %rdi, %rdi
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
cmp $16063, %rbp

// Store
lea addresses_A+0x1a6af, %r8
nop
nop
nop
nop
nop
cmp $2537, %rax
mov $0x5152535455565758, %rbx
movq %rbx, (%r8)
nop
nop
nop
add %rax, %rax

// Faulty Load
lea addresses_A+0x1a6af, %rdi
nop
nop
nop
xor $9438, %rax
mov (%rdi), %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 5}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/

.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x169f1, %rsi
lea addresses_A_ht+0x13931, %rdi
nop
nop
nop
nop
nop
add $45096, %r14
mov $100, %rcx
rep movsq
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0xe9f1, %rsi
lea addresses_WT_ht+0x13be1, %rdi
sub %rbp, %rbp
mov $18, %rcx
rep movsb
nop
nop
nop
inc %rsi
lea addresses_A_ht+0xb3f1, %rbx
nop
nop
nop
nop
and $19204, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
sub $21106, %r14
lea addresses_D_ht+0xabf1, %rcx
nop
nop
nop
nop
nop
dec %r11
mov (%rcx), %rsi
nop
nop
dec %r11
lea addresses_D_ht+0x161f1, %rsi
nop
nop
dec %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
and $0xffffffffffffffc0, %rsi
movaps %xmm5, (%rsi)
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x1b7b1, %rdi
sub $30446, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rdi)
add %rdi, %rdi
lea addresses_UC_ht+0x8df1, %rbp
cmp $63657, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%rbp)
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x7271, %rsi
lea addresses_WC_ht+0x9d31, %rdi
nop
nop
nop
nop
add $32866, %r12
mov $79, %rcx
rep movsl
nop
sub %rsi, %rsi
lea addresses_D_ht+0x14df1, %r14
sub %r11, %r11
movb $0x61, (%r14)
nop
nop
nop
nop
and $16049, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0xf547, %r9
inc %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r9)
nop
nop
and $37048, %r13

// Load
lea addresses_WT+0x199f1, %r10
nop
nop
nop
nop
nop
sub $5224, %rcx
vmovntdqa (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
xor $14050, %r10

// Store
lea addresses_A+0x8df1, %r13
nop
and $58686, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r13)
inc %rcx

// Store
mov $0xdf1, %r9
nop
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_normal+0xeaf1, %r13
nop
nop
nop
add $6665, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_A+0x8df1, %rcx
nop
nop
nop
nop
nop
cmp $46172, %r13
mov (%rcx), %r10d
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 10}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'58': 14}
58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/

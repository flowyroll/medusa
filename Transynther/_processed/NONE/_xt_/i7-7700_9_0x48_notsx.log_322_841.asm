.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1befc, %rsi
lea addresses_UC_ht+0x1e6fc, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $18, %rcx
rep movsq
nop
nop
nop
nop
cmp $14747, %r12
lea addresses_A_ht+0x154fc, %r11
clflush (%r11)
nop
and %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x1c7c, %rsi
add %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
and $0xffffffffffffffc0, %rsi
movntdq %xmm7, (%rsi)
nop
xor $19645, %rcx
lea addresses_A_ht+0xaabc, %r12
nop
nop
nop
xor $31372, %rbp
mov (%r12), %edi
nop
xor $15850, %r13
lea addresses_UC_ht+0x3cbc, %rsi
nop
nop
nop
nop
cmp $39013, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x1dee4, %rdi
nop
inc %rbp
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
sub $32094, %rsi
lea addresses_normal_ht+0x1d33c, %r12
nop
nop
nop
cmp %r11, %r11
mov (%r12), %rdi
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x1688c, %rsi
lea addresses_WC_ht+0x1e0fc, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $25, %rcx
rep movsw
add $43822, %rcx
lea addresses_normal_ht+0xfbfc, %r11
add %r13, %r13
movb (%r11), %cl
nop
nop
nop
nop
xor $49085, %r11
lea addresses_UC_ht+0x18e27, %r12
nop
nop
nop
nop
nop
add %r13, %r13
movb $0x61, (%r12)
nop
nop
nop
nop
nop
sub %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rdi
push %rdx
push %rsi

// Store
mov $0x1a4599000000097e, %rdx
clflush (%rdx)
nop
nop
nop
nop
sub $56180, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rdx)
nop
sub %r13, %r13

// Faulty Load
lea addresses_WT+0x1ecfc, %rsi
nop
nop
nop
nop
nop
xor $31647, %rdi
movb (%rsi), %r9b
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'39': 322}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/

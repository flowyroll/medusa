.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xd16f, %r12
dec %r9
mov (%r12), %r13d
nop
nop
nop
and $38500, %r13
lea addresses_D_ht+0xc6ef, %r12
cmp $32596, %rdi
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
nop
xor %r13, %r13
lea addresses_WT_ht+0xb998, %r11
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r11)
cmp $31630, %r11
lea addresses_D_ht+0x706f, %rdi
nop
cmp $62320, %rax
movb $0x61, (%rdi)
nop
nop
nop
inc %r12
lea addresses_WT_ht+0xf76f, %rsi
lea addresses_A_ht+0x2aef, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
cmp $23990, %r10
mov $112, %rcx
rep movsq
add $33786, %rax
lea addresses_UC_ht+0x1c96f, %rax
nop
nop
nop
sub $25427, %rsi
movb $0x61, (%rax)
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x117ef, %r12
nop
nop
nop
xor %r13, %r13
vmovups (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x9c4f, %rcx
nop
nop
nop
nop
xor $50730, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x1d14f, %rsi
cmp %r9, %r9
mov (%rsi), %r13
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x1b8ef, %r11
nop
nop
nop
nop
xor $32659, %rcx
movb (%r11), %r9b
nop
nop
nop
nop
add $56461, %rax
lea addresses_UC_ht+0x18aef, %rsi
lea addresses_WT_ht+0x446f, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $62801, %rax
mov $38, %rcx
rep movsb
inc %r10
lea addresses_WC_ht+0x1927f, %r9
clflush (%r9)
cmp $33385, %r10
movw $0x6162, (%r9)
and %rdi, %rdi
lea addresses_normal_ht+0x1e7ef, %r10
nop
and $31682, %r11
movb $0x61, (%r10)
nop
nop
add %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdx

// Store
lea addresses_A+0x154ef, %r10
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovaps %ymm0, (%r10)
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WT+0xdcef, %r13
nop
sub $1797, %rbp
mov $0x5152535455565758, %r12
movq %r12, (%r13)
nop
nop
nop
sub $8422, %rdx

// Faulty Load
lea addresses_WT+0xdcef, %r12
nop
nop
nop
xor %rcx, %rcx
vmovntdqa (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_A', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'ff': 6, '46': 3, '49': 12, '00': 306, '6e': 1, '37': 1, '9f': 1, 'ad': 1}
00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 ff 00 00 00 00 49 00 00 49 ff 46 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 ff 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 37 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 ad 00 00 00 00 00 00 00 00 00 9f 00 00 00 00 00 00 00 00 00 6e 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

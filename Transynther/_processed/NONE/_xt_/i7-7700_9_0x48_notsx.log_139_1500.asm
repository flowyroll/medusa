.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6652, %r8
and $32577, %r13
mov (%r8), %rax
nop
and %r9, %r9
lea addresses_normal_ht+0xab92, %rsi
lea addresses_normal_ht+0x1c592, %rdi
clflush (%rsi)
clflush (%rdi)
nop
sub %r14, %r14
mov $119, %rcx
rep movsb
nop
sub %rax, %rax
lea addresses_WT_ht+0x1df92, %r14
clflush (%r14)
sub $52457, %rsi
mov (%r14), %edi
nop
nop
nop
nop
nop
xor $14721, %rsi
lea addresses_normal_ht+0xb992, %rsi
lea addresses_A_ht+0x17b92, %rdi
clflush (%rdi)
nop
cmp %r13, %r13
mov $73, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x15392, %rax
clflush (%rax)
nop
and $12856, %rdi
movb $0x61, (%rax)
nop
nop
nop
nop
inc %rax
lea addresses_UC_ht+0x18cba, %rsi
lea addresses_A_ht+0x1e792, %rdi
nop
nop
nop
nop
dec %rax
mov $124, %rcx
rep movsb
xor %rax, %rax
lea addresses_A_ht+0x11692, %rcx
nop
nop
nop
and %r9, %r9
movw $0x6162, (%rcx)
add %rsi, %rsi
lea addresses_A_ht+0x9032, %rsi
nop
and $63944, %r14
movw $0x6162, (%rsi)
xor %rsi, %rsi
lea addresses_WC_ht+0x5892, %r8
nop
nop
and %r13, %r13
movb (%r8), %r9b
nop
nop
nop
cmp $28759, %r8
lea addresses_WC_ht+0x1be92, %rcx
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
and $1962, %rdi
lea addresses_UC_ht+0x3bb2, %rax
nop
nop
nop
nop
nop
sub $38447, %rdi
movw $0x6162, (%rax)
and $45560, %rdi
lea addresses_D_ht+0x3e15, %r13
nop
nop
inc %r8
vmovups (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x5b92, %rcx
nop
nop
nop
nop
inc %rsi
mov (%rcx), %edi
and $52073, %r8
lea addresses_A_ht+0x19792, %rsi
lea addresses_A_ht+0x19b92, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $71, %rcx
rep movsb
nop
nop
nop
nop
nop
add $61512, %rsi
lea addresses_A_ht+0x17b92, %rax
nop
nop
xor $10446, %r13
movups (%rax), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
and $12288, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Load
lea addresses_WT+0x1b452, %rax
nop
nop
sub %rdi, %rdi
movups (%rax), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
inc %r13

// Store
mov $0x5d58990000000792, %rdx
clflush (%rdx)
nop
nop
dec %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%rdx)
nop
nop
nop
nop
dec %rax

// Store
lea addresses_A+0x16492, %r13
nop
and $25653, %r9
movb $0x51, (%r13)
nop
nop
nop
nop
nop
cmp %r15, %r15

// Store
mov $0x812, %rcx
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
nop
nop
nop
cmp $23546, %rdi

// Load
lea addresses_D+0x19292, %rdi
nop
nop
nop
nop
nop
cmp $22422, %r9
mov (%rdi), %r13
nop
nop
and %r15, %r15

// Store
lea addresses_UC+0x1e492, %rdi
xor $12795, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
cmp %rcx, %rcx

// Faulty Load
lea addresses_WT+0x1bb92, %r15
xor %r9, %r9
mov (%r15), %ax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 9}}
{'39': 139}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/

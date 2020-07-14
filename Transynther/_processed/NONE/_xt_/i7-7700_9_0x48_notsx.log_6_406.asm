.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ae18, %rsi
nop
nop
and %rax, %rax
movb (%rsi), %r12b
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x1aeba, %r12
nop
nop
dec %rbx
movups (%r12), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
add $47593, %rdi
lea addresses_WC_ht+0x9918, %rsi
lea addresses_WT_ht+0xd118, %rdi
nop
nop
nop
cmp %r15, %r15
mov $28, %rcx
rep movsl
nop
nop
nop
and $22418, %rax
lea addresses_UC_ht+0x85f8, %rbx
clflush (%rbx)
nop
cmp %r10, %r10
movw $0x6162, (%rbx)
nop
nop
nop
cmp $65116, %rax
lea addresses_A_ht+0xf1a8, %rsi
lea addresses_WT_ht+0x19160, %rdi
xor $1421, %rax
mov $25, %rcx
rep movsb
nop
nop
nop
nop
nop
and $32269, %rbx
lea addresses_WC_ht+0x1c7da, %rdi
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
sub $49519, %r10
lea addresses_normal_ht+0x14a18, %r15
nop
nop
nop
nop
inc %r10
mov (%r15), %esi
nop
xor $24443, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_normal+0x1ff18, %rcx
nop
nop
nop
nop
nop
xor $3192, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_WT+0x1e818, %rsi
clflush (%rsi)
nop
xor %rax, %rax
movl $0x51525354, (%rsi)
nop
nop
and $49604, %rsi

// Store
lea addresses_normal+0xe518, %r15
nop
nop
nop
dec %rax
movb $0x51, (%r15)
nop
xor %r10, %r10

// Store
lea addresses_RW+0xb148, %r15
dec %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%r15)
nop
xor %r11, %r11

// Faulty Load
lea addresses_normal+0xe518, %rcx
nop
nop
nop
nop
add %rax, %rax
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'34': 6}
34 34 34 34 34 34
*/

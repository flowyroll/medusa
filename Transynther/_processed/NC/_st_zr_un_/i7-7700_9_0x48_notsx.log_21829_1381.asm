.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xe001, %r11
nop
nop
nop
nop
nop
add $35331, %rbp
movb (%r11), %cl
inc %rsi
lea addresses_A_ht+0x6321, %r15
sub $38948, %r8
mov (%r15), %r10d
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x1861, %r8
clflush (%r8)
nop
nop
nop
nop
xor %r10, %r10
mov (%r8), %ecx
lfence
lea addresses_normal_ht+0x6e1, %rcx
nop
sub %r8, %r8
movb (%rcx), %r11b
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0xf61, %r10
cmp %rcx, %rcx
movb $0x61, (%r10)
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x9405, %rsi
lea addresses_WC_ht+0x7761, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %rbp, %rbp
mov $112, %rcx
rep movsb
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x3761, %r10
nop
nop
nop
nop
and $37527, %r15
mov (%r10), %r8d
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0xb1d1, %rcx
nop
nop
nop
nop
dec %rsi
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x3961, %rsi
nop
nop
nop
nop
nop
inc %r11
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
nop
sub $1383, %rbp
lea addresses_A_ht+0xc761, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rdi)
sub $52513, %rcx
lea addresses_WT_ht+0x14261, %r10
nop
nop
nop
nop
nop
dec %r11
movb (%r10), %cl
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x154c9, %rdi
nop
sub %r15, %r15
movl $0x61626364, (%rdi)
nop
nop
sub $50171, %r11
lea addresses_D_ht+0x1dd61, %r15
clflush (%r15)
nop
nop
nop
xor %r11, %r11
movb $0x61, (%r15)
nop
cmp $34623, %r11
lea addresses_WT_ht+0x2d61, %rsi
nop
cmp %r10, %r10
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0x19f89, %r11
cmp %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WT+0x1ca21, %rcx
add %r12, %r12
movl $0x51525354, (%rcx)
cmp $8536, %r12

// Store
mov $0xb61, %rdx
nop
nop
nop
nop
nop
cmp $25243, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
mov $0x206c1a0000000b61, %rax
nop
nop
nop
sub $15465, %r14
movb (%rax), %dl
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'6d': 17655, '58': 3959, '00': 215}
58 00 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 58 58 6d 6d 6d 00 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 58 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 58 6d 6d 6d 58 6d 6d 58 6d 6d 6d 58 6d 6d 58 6d 6d 6d 58 6d 58 58 6d 6d 58 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 58 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 58 58 6d 6d 58 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 00 00 58 6d 6d 6d 6d 6d 58 6d 6d 58 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 58 6d 6d 6d 58 6d 58 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 00 58 6d 6d 6d 58 58 6d 6d 58 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 6d 58 58 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 00 58 58 58 6d 58 58 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 58 6d 6d 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 58 6d 6d 6d 58 6d 58 6d 6d 6d 6d 6d 58 6d 58 6d 6d 6d 6d 6d 6d 6d 00 6d 6d 58 58 6d 58 6d 6d 6d 6d 58 58 6d 6d 58 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 58 6d 6d 6d 6d 58 6d 6d 6d 6d 58 6d 6d 58 6d 6d 6d 58 6d 6d 6d 6d 6d 58 6d 00 6d 6d 6d 58 6d 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 58 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 58 58 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 58 58 6d 6d 6d 58 6d 6d 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 58 6d 6d 58 6d 6d 6d 6d 6d 58 6d 58 58 6d 6d 6d 6d 58 58 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 58 6d 6d 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 6d 6d 6d 58 6d 6d 00 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 58 6d 6d 00 6d 6d 6d 6d 6d 6d 6d 58 58 58 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 58 58 6d 6d 6d 6d 6d 58 6d 58 58 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 58 58 6d 58 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 58 58 6d 6d 6d 58 6d 6d 58 6d 6d 6d 6d
*/

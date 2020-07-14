.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x105a, %r9
nop
nop
nop
nop
and $46065, %rdx
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x53fa, %rsi
lea addresses_normal_ht+0x165da, %rdi
nop
nop
nop
add %r9, %r9
mov $77, %rcx
rep movsl
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x925a, %rsi
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
dec %rcx
lea addresses_A_ht+0x245a, %rsi
lea addresses_WT_ht+0x6e5a, %rdi
nop
cmp %r14, %r14
mov $84, %rcx
rep movsb
nop
nop
nop
inc %r9
lea addresses_UC_ht+0x485a, %rbx
nop
nop
nop
inc %rdi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x1dda, %rsi
lea addresses_WC_ht+0x8cda, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r10, %r10
mov $47, %rcx
rep movsq
nop
nop
nop
nop
inc %r10
lea addresses_WC_ht+0x1b15a, %r14
sub $45160, %r9
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
inc %r10
lea addresses_WT_ht+0x8c1a, %rsi
lea addresses_UC_ht+0x705a, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $42, %rcx
rep movsb
add %r10, %r10
lea addresses_normal_ht+0x35f8, %rdi
nop
nop
and %rcx, %rcx
movw $0x6162, (%rdi)
and %rdx, %rdx
lea addresses_UC_ht+0xbf1a, %rsi
inc %rbx
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r10
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x45a, %rsi
lea addresses_D_ht+0x1d62, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $6238, %rdx
mov $82, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x1c5a2, %r10
cmp $63296, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x145a, %rdx
clflush (%rdx)
dec %rbx
movb $0x61, (%rdx)
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0xc61e, %r14
nop
sub $46598, %rsi
movb (%r14), %cl
nop
sub $58912, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %r9
push %rcx

// Store
mov $0x7903d10000000247, %r9
nop
nop
inc %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r9)
nop
nop
xor %r9, %r9

// Store
lea addresses_normal+0x1145a, %r13
inc %rcx
movb $0x51, (%r13)
nop
nop
and %r8, %r8

// Store
lea addresses_US+0x1605a, %r8
xor %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, (%r8)
nop
xor $25735, %r11

// Store
lea addresses_D+0xde5a, %r13
nop
nop
inc %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
add $50623, %r8

// Faulty Load
lea addresses_US+0xb05a, %r11
inc %r13
mov (%r11), %r14
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'58': 42}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/

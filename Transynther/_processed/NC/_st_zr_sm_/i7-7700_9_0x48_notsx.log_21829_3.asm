.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x13f79, %r8
nop
nop
nop
xor %r13, %r13
mov (%r8), %r12
nop
nop
cmp $62863, %r9
lea addresses_WC_ht+0x19a5d, %rbx
nop
nop
nop
nop
add $46726, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
and $0xffffffffffffffc0, %rbx
vmovaps %ymm6, (%rbx)
nop
add %rdx, %rdx
lea addresses_WC_ht+0x1bcf9, %r13
nop
nop
nop
and %rdx, %rdx
mov (%r13), %r12w
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x1a71e, %rsi
lea addresses_UC_ht+0x9479, %rdi
clflush (%rsi)
cmp $44440, %rbx
mov $66, %rcx
rep movsb
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x70f9, %r9
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
and $47030, %rsi
lea addresses_WC_ht+0x1ae79, %rsi
nop
nop
xor $30440, %rbx
mov (%rsi), %rcx
nop
nop
nop
nop
nop
cmp $32992, %r13
lea addresses_UC_ht+0xc279, %rsi
lea addresses_normal_ht+0xcd09, %rdi
clflush (%rdi)
sub %rdx, %rdx
mov $76, %rcx
rep movsq
nop
xor %rsi, %rsi
lea addresses_A_ht+0x9cf9, %rsi
lea addresses_D_ht+0x1cb33, %rdi
nop
nop
nop
nop
lfence
mov $51, %rcx
rep movsb
nop
nop
nop
nop
nop
and $19673, %r12
lea addresses_WC_ht+0x38a1, %r12
inc %r8
mov (%r12), %rdx
nop
nop
nop
nop
nop
cmp $53419, %rcx
lea addresses_WC_ht+0x19529, %rsi
lea addresses_UC_ht+0x1d0f9, %rdi
nop
cmp %rbx, %rbx
mov $30, %rcx
rep movsq
nop
nop
xor $30940, %rbx
lea addresses_WC_ht+0x1acf9, %rsi
lea addresses_D_ht+0x1dbb, %rdi
nop
nop
nop
nop
inc %r13
mov $44, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x4f56, %r9
nop
nop
nop
cmp $21647, %rdi
mov (%r9), %r13d
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x1d0f9, %rsi
lea addresses_UC_ht+0x190f9, %rdi
xor %rdx, %rdx
mov $117, %rcx
rep movsb
nop
nop
nop
nop
add $3258, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_D+0x166f9, %rdx
nop
cmp %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rdx)
nop
nop
nop
nop
inc %rdx

// Load
lea addresses_A+0x11a9, %r15
clflush (%r15)
nop
nop
inc %rdi
movb (%r15), %r14b
nop
cmp %rbx, %rbx

// Store
mov $0xac9, %r13
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
nop
dec %rdi

// Store
mov $0xde68c00000008f9, %r13
cmp $53957, %rbx
movb $0x51, (%r13)
nop
nop
nop
inc %rdi

// Store
lea addresses_RW+0x10f9, %r14
nop
nop
add %rbx, %rbx
movl $0x51525354, (%r14)
nop
nop
and %rbx, %rbx

// Store
lea addresses_US+0x1b0f9, %rdx
nop
nop
nop
and %rcx, %rcx
movl $0x51525354, (%rdx)
nop
nop
nop
and %r15, %r15

// Faulty Load
mov $0xde68c00000008f9, %r13
nop
nop
nop
sub $48853, %r15
mov (%r13), %r14w
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_US', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'51': 19791, '00': 2038}
00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 00 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 00 51 51 51 00 51 51 00 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 00 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 00 51 00 51 51 51 51 51 51 00 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 00 51 00 51 51 51 00 00 51 51 51 51 51 51 00 51 51 00 51 51 51 51
*/

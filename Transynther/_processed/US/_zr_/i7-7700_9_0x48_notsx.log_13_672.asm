.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x6447, %rsi
lea addresses_WT_ht+0xfe2d, %rdi
clflush (%rsi)
nop
nop
lfence
mov $30, %rcx
rep movsb
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1888d, %r9
clflush (%r9)
nop
inc %rcx
movb (%r9), %al
nop
nop
nop
nop
nop
add $56381, %r9
lea addresses_UC_ht+0x4a2d, %rsi
lea addresses_WT_ht+0x176d, %rdi
nop
nop
nop
nop
inc %r14
mov $22, %rcx
rep movsw
nop
and %r11, %r11
lea addresses_A_ht+0x13dd5, %rsi
lea addresses_D_ht+0x67ad, %rdi
nop
cmp $5401, %rbx
mov $72, %rcx
rep movsq
nop
xor %rdi, %rdi
lea addresses_A_ht+0x153e7, %rsi
lea addresses_WC_ht+0x662d, %rdi
clflush (%rsi)
xor %rax, %rax
mov $8, %rcx
rep movsw
nop
nop
add $9613, %rdi
lea addresses_D_ht+0x922d, %rsi
lea addresses_WC_ht+0x1eead, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r11, %r11
mov $55, %rcx
rep movsb
nop
nop
xor $51893, %r11
lea addresses_WC_ht+0xa0d2, %r14
nop
nop
nop
nop
nop
add %r11, %r11
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x17c1c, %r14
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm0
vmovups %ymm0, (%r14)
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbx

// Load
lea addresses_D+0x1e85d, %r15
nop
add %r13, %r13
movb (%r15), %al
and %rbx, %rbx

// Faulty Load
lea addresses_US+0x13e2d, %r13
nop
cmp $2989, %r10
mov (%r13), %r12w
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/

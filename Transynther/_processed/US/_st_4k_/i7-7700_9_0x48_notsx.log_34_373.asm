.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xe765, %rsi
lea addresses_WC_ht+0x2c47, %rdi
nop
nop
and $2177, %r11
mov $119, %rcx
rep movsb
nop
nop
nop
cmp $62780, %rbx
lea addresses_normal_ht+0x8da3, %rbx
clflush (%rbx)
nop
nop
nop
xor $32698, %r14
mov (%rbx), %rdi
nop
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0xd8c7, %rsi
lea addresses_WT_ht+0x15027, %rdi
clflush (%rdi)
cmp %r11, %r11
mov $57, %rcx
rep movsw
nop
nop
nop
nop
sub $8289, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rdi
push %rsi

// Load
lea addresses_D+0xe5e7, %r15
and %rax, %rax
movntdqa (%r15), %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_normal+0x13a07, %r15
nop
cmp %r9, %r9
movb $0x51, (%r15)
sub %r14, %r14

// Load
lea addresses_US+0x13fe7, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor $11280, %rdi
mov (%r11), %r9d
nop
nop
xor $53688, %r14

// Store
lea addresses_A+0x1a155, %r11
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r11)

// Exception!!!
mov (0), %rsi
nop
add $4432, %r15

// Faulty Load
lea addresses_US+0x11a07, %r15
nop
nop
nop
inc %rsi
movb (%r15), %r9b
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'51': 34}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/

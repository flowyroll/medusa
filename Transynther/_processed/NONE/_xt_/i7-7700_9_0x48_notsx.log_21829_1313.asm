.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1d309, %rbx
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%rbx)
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x31c9, %r11
nop
nop
and $34444, %r14
mov (%r11), %bx
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x3249, %rsi
lea addresses_A_ht+0xfb9, %rdi
clflush (%rdi)
nop
nop
xor $61135, %rbx
mov $124, %rcx
rep movsq
nop
nop
xor $46451, %rbx
lea addresses_normal_ht+0x1cd79, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
sub $7317, %r11
mov (%rdx), %ebx
nop
inc %rbx
lea addresses_normal_ht+0x35e9, %rsi
lea addresses_WT_ht+0x9c9, %rdi
clflush (%rsi)
nop
nop
nop
add %r13, %r13
mov $123, %rcx
rep movsb
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x17319, %rbx
nop
nop
nop
nop
sub $9357, %rsi
mov (%rbx), %r13w
nop
nop
and $22617, %rcx
lea addresses_WT_ht+0x5c4b, %rcx
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%rcx)
nop
nop
xor $24503, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_US+0x6b29, %rdx
clflush (%rdx)
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovaps %ymm2, (%rdx)
nop
nop
add %r14, %r14

// Store
lea addresses_WC+0x1dfc9, %r13
clflush (%r13)
add $36936, %r14
movl $0x51525354, (%r13)
nop
nop
xor $11334, %rsi

// Store
lea addresses_WT+0x1782b, %rdx
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
inc %rsi

// Store
lea addresses_RW+0x16dc9, %rsi
nop
dec %rdi
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_D+0x95c9, %rdx
nop
nop
nop
xor %rsi, %rsi
mov (%rdx), %r13d
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_US', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/

.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
lea addresses_UC_ht+0x1e314, %r10
clflush (%r10)
nop
nop
sub %r12, %r12
movb $0x61, (%r10)
dec %r11
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rsi

// Store
mov $0x6f3, %rbx
clflush (%rbx)
nop
cmp %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
nop
and $34685, %rsi

// Store
mov $0x4b7e5c00000001b3, %rsi
xor %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
nop
inc %r13

// Store
mov $0xfb3, %rsi
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_WC+0x1deb3, %rcx
nop
nop
nop
nop
cmp $32903, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
inc %r8

// Load
mov $0xc13, %r11
nop
nop
nop
nop
nop
sub %r8, %r8
movb (%r11), %cl
and $33169, %r11

// Faulty Load
lea addresses_RW+0x79b3, %rcx
nop
add %r11, %r11
mov (%rcx), %bx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'32': 24}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/

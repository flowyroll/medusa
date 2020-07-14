.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rdi
lea addresses_WT_ht+0x17797, %r10
nop
nop
add $9188, %r11
movb (%r10), %r13b
cmp $33466, %rdi
pop %rdi
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rsi

// Store
mov $0x55, %rsi
clflush (%rsi)
nop
and $26467, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
xor $31118, %r13

// Faulty Load
lea addresses_D+0x1e355, %rcx
nop
nop
nop
inc %rdi
mov (%rcx), %r12w
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'36': 9}
36 36 36 36 36 36 36 36 36
*/

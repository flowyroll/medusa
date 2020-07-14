.global s_prepare_buffers
s_prepare_buffers:
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1bd26, %rsi
lea addresses_A_ht+0x3e, %rdi
nop
nop
nop
nop
add $5005, %rbx
mov $20, %rcx
rep movsb
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rsi

// Store
mov $0x6ab6da0000000ede, %rcx
nop
nop
nop
nop
nop
inc %r12
movb $0x51, (%rcx)
xor $46424, %r14

// Faulty Load
lea addresses_WC+0x15b9e, %rcx
clflush (%rcx)
nop
nop
and %r13, %r13
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rsi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'00': 1}
00
*/

.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rdi
push %rdx
push %rsi

// Load
lea addresses_D+0x11245, %rdx
clflush (%rdx)
nop
nop
cmp $22609, %r11
mov (%rdx), %di
nop
nop
add %rdi, %rdi

// Load
lea addresses_normal+0x112c5, %r11
add $56195, %r10
movups (%r11), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
cmp $56822, %rax

// Load
lea addresses_D+0x1621d, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov (%rdi), %r10d
nop
inc %r14

// Store
lea addresses_RW+0x17f81, %r14
nop
nop
nop
nop
inc %rdx
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Load
mov $0x663d3b0000000159, %r11
nop
nop
nop
and %rdi, %rdi
mov (%r11), %rsi
nop
nop
add $6754, %rdx

// Load
lea addresses_A+0x1d585, %r14
nop
nop
nop
nop
and %rax, %rax
movb (%r14), %r11b
sub $27703, %rdx

// Faulty Load
lea addresses_D+0x11245, %rax
nop
nop
nop
add $44641, %r14
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'36': 66}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/

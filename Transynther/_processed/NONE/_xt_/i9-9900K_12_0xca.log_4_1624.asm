.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x2e60, %rdi
nop
nop
and %r9, %r9
movb $0x51, (%rdi)
nop
add $49710, %r11

// Store
lea addresses_RW+0x1c0, %r11
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
nop
and $64063, %r9

// Load
lea addresses_PSE+0x1a210, %r12
nop
nop
nop
sub %rdx, %rdx
mov (%r12), %esi
nop
nop
dec %rsi

// Load
lea addresses_WC+0xc988, %r14
nop
nop
nop
sub %r9, %r9
movb (%r14), %r12b
and $27339, %r9

// Store
lea addresses_WC+0x129f0, %rdx
nop
xor %rsi, %rsi
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
add %r14, %r14

// Load
lea addresses_WT+0x196c0, %rdx
nop
nop
nop
nop
nop
xor %r9, %r9
mov (%rdx), %esi
nop
nop
nop
nop
sub $19465, %rdx

// Faulty Load
lea addresses_normal+0x15dc0, %r14
clflush (%r14)
nop
cmp $27057, %r12
movb (%r14), %r11b
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'34': 4}
34 34 34 34
*/

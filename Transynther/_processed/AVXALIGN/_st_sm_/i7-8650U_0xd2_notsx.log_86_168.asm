.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rsi
lea addresses_UC_ht+0x15816, %rbp
clflush (%rbp)
nop
nop
nop
nop
inc %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x1ec96, %r11
nop
nop
nop
nop
nop
inc %r15
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
nop
xor %r12, %r12
pop %rsi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_D+0xb496, %r11
nop
nop
nop
cmp %r14, %r14
movb $0x51, (%r11)
and $43500, %r11

// Load
lea addresses_WC+0x13916, %rax
sub $34257, %r12
movups (%rax), %xmm7
vpextrq $1, %xmm7, %rdx
add %rcx, %rcx

// Store
lea addresses_D+0x1f940, %rdx
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rdx)
nop
add $16349, %rcx

// Store
mov $0xc8f9b0000000f26, %r14
nop
nop
nop
cmp $31657, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
cmp $7980, %rax

// Faulty Load
lea addresses_D+0xb496, %rcx
nop
nop
nop
inc %r14
mov (%rcx), %r11w
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'51': 86}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/

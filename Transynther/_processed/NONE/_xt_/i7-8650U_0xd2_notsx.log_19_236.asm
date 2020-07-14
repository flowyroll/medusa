.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x43f9, %rbx
nop
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
cmp $42470, %r9

// REPMOV
lea addresses_D+0x6e6f, %rsi
lea addresses_RW+0x1be39, %rdi
nop
nop
xor %r15, %r15
mov $16, %rcx
rep movsl
nop
nop
sub $46694, %rcx

// Faulty Load
lea addresses_normal+0x9139, %r9
nop
dec %rcx
movups (%r9), %xmm5
vpextrq $0, %xmm5, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'34': 19}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/

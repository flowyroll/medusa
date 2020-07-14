.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rcx
lea addresses_UC_ht+0x10758, %r13
nop
nop
inc %rcx
movups (%r13), %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
nop
xor $21091, %r12
pop %rcx
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_normal+0x14424, %r9
clflush (%r9)
nop
nop
add %rcx, %rcx
movl $0x51525354, (%r9)
nop
nop
cmp $29173, %r9

// Load
lea addresses_normal+0x1b264, %rcx
nop
xor $37206, %r11
mov (%rcx), %r9d
nop
nop
add $63333, %r11

// Store
lea addresses_normal+0x6864, %r9
nop
nop
nop
nop
cmp %r15, %r15
movl $0x51525354, (%r9)
nop
nop
nop
dec %rax

// Store
lea addresses_WC+0x16f22, %r9
nop
nop
nop
cmp $54893, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r9)
and %rcx, %rcx

// Store
lea addresses_UC+0x3264, %rcx
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%rcx)
cmp $52890, %r9

// Faulty Load
lea addresses_UC+0x18264, %r9
nop
nop
nop
cmp %r11, %r11
mov (%r9), %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'58': 28}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/

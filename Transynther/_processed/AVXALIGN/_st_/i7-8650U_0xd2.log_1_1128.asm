.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a8eb, %rsi
nop
nop
nop
nop
add $56190, %r11
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x1ae1b, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor %r8, %r8
vmovups (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x256b, %rcx
nop
nop
dec %r14
mov (%rcx), %esi
cmp %r14, %r14

// Store
lea addresses_WC+0x1a1e3, %r9
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movntdq %xmm2, (%r9)
nop
cmp %rsi, %rsi

// REPMOV
lea addresses_A+0xc82b, %rsi
lea addresses_A+0x746b, %rdi
nop
nop
nop
dec %r15
mov $27, %rcx
rep movsb
nop
nop
nop
nop
xor $35343, %rcx

// Faulty Load
lea addresses_D+0x1eeb, %rdi
nop
nop
nop
nop
and $35539, %r11
mov (%rdi), %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'36': 1}
36
*/

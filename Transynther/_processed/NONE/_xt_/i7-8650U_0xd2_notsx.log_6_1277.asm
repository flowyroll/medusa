.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbp
push %rdi
lea addresses_UC_ht+0x446c, %rbp
nop
nop
nop
and $29422, %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x1074c, %r11
nop
and %r8, %r8
movups (%r11), %xmm6
vpextrq $0, %xmm6, %rdi
nop
inc %r11
pop %rdi
pop %rbp
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0x18c6c, %rbp
nop
nop
nop
sub $65003, %rax
movups (%rbp), %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
nop
xor $25436, %rbp

// REPMOV
lea addresses_WC+0x966c, %rsi
lea addresses_UC+0x15c6c, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $30, %rcx
rep movsb
inc %r15

// Store
mov $0xc, %rbx
add $41137, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
nop
nop
nop
nop
inc %rdi

// Faulty Load
lea addresses_RW+0x1ac6c, %rdx
clflush (%rdx)
and %rbp, %rbp
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'32': 6}
32 32 32 32 32 32
*/

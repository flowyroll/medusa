.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x185e4, %rsi
lea addresses_UC_ht+0x1d794, %rdi
nop
nop
nop
dec %r14
mov $24, %rcx
rep movsw
and $41503, %r13
lea addresses_UC_ht+0x3128, %r8
sub $51859, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %r8
movntdq %xmm3, (%r8)
nop
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x5904, %r13
nop
nop
nop
add $37523, %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%r13)
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_WT+0x1fe4, %r9
nop
nop
nop
nop
and %r13, %r13
movb $0x51, (%r9)
nop
nop
sub $35101, %r12

// Store
lea addresses_RW+0xbe4, %rcx
nop
sub $60660, %rbp
movw $0x5152, (%rcx)
nop
nop
nop
nop
xor $64939, %rbx

// Store
lea addresses_WT+0x65e4, %r9
nop
nop
nop
nop
nop
add $43455, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_RW+0x39e4, %rbp
clflush (%rbp)
nop
nop
nop
and %rcx, %rcx
movups (%rbp), %xmm6
vpextrq $1, %xmm6, %r13
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'32': 1}
32
*/

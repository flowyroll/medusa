.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xf65d, %r9
nop
nop
nop
nop
nop
and $15502, %rsi
movw $0x6162, (%r9)
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x1d645, %r14
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
nop
cmp $27539, %r14
lea addresses_WC_ht+0x1c5d, %rcx
nop
nop
nop
xor %r13, %r13
movb $0x61, (%rcx)
nop
and %rcx, %rcx
lea addresses_A_ht+0x10e1d, %rsi
lea addresses_normal_ht+0x12e5d, %rdi
nop
nop
nop
nop
and %r9, %r9
mov $58, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r9
lea addresses_A_ht+0x185dd, %rsi
lea addresses_A_ht+0x165d, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $80, %rcx
rep movsw
nop
nop
nop
nop
nop
add $63856, %rdi
lea addresses_A_ht+0x1b93d, %rsi
lea addresses_A_ht+0x1da5d, %rdi
nop
nop
cmp %r9, %r9
mov $123, %rcx
rep movsq
cmp $48538, %rdi
lea addresses_D_ht+0x11b5d, %rsi
lea addresses_WT_ht+0x62bd, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $32, %rcx
rep movsw
nop
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_US+0x9a5d, %r15
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_RW+0x1e441, %rcx
nop
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
cmp %r11, %r11

// Store
lea addresses_D+0x161dd, %r11
nop
nop
nop
nop
dec %r15
movb $0x51, (%r11)
nop
nop
nop
nop
inc %r15

// Store
lea addresses_RW+0x1655d, %r13
nop
dec %r11
movw $0x5152, (%r13)
nop
nop
cmp $46465, %rcx

// Store
lea addresses_RW+0x1a7a5, %rbp
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rbp)
add $53417, %r15

// Faulty Load
lea addresses_UC+0x65d, %rbp
nop
nop
nop
add $11483, %rsi
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'45': 13019, '00': 27, '46': 8783}
45 45 45 45 46 45 45 46 46 46 45 45 46 45 45 46 45 45 46 46 46 45 45 46 45 45 46 45 46 46 46 45 46 45 46 46 45 46 45 46 45 46 45 46 45 45 45 46 45 46 45 46 46 45 45 46 46 46 45 46 45 45 46 46 46 45 45 46 46 45 46 45 45 46 45 46 46 45 45 46 46 46 46 45 46 45 45 46 46 45 45 45 46 46 45 45 46 46 45 46 46 46 45 46 45 46 46 45 46 46 46 45 46 46 45 46 45 46 45 46 45 45 45 45 45 46 46 46 45 45 46 45 45 45 45 45 45 45 45 46 45 45 46 45 46 45 46 45 46 45 45 46 46 46 45 45 45 46 46 45 46 46 46 45 45 46 46 45 45 46 46 45 46 46 46 45 45 45 46 45 45 46 45 46 46 45 45 46 46 45 45 46 46 46 46 45 45 46 45 45 45 45 46 46 45 46 45 46 46 45 45 45 46 45 45 46 46 46 46 46 46 45 45 45 45 45 46 46 45 45 45 45 45 46 46 46 46 45 45 45 46 45 45 45 45 46 45 45 46 46 45 45 46 45 45 45 45 46 46 46 45 45 45 46 45 45 46 46 45 45 46 46 45 45 45 46 46 45 45 45 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 46 46 45 45 46 46 45 46 46 45 45 45 46 45 46 45 45 46 46 46 45 46 46 46 45 45 46 46 45 45 46 45 46 45 45 45 45 45 46 46 46 45 45 46 45 45 45 46 45 45 46 46 45 45 46 45 45 45 46 45 46 45 46 45 45 46 45 45 45 00 45 45 45 45 45 45 46 45 45 45 46 45 46 46 46 45 46 46 45 45 45 45 46 46 45 45 46 46 45 45 45 46 46 45 45 45 46 46 46 45 45 46 45 45 46 46 45 46 46 46 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 46 45 45 45 45 45 46 46 45 45 45 46 46 45 46 45 45 45 46 46 46 46 45 45 45 45 46 45 45 46 46 46 45 45 45 45 45 45 46 00 45 45 45 46 45 45 46 45 46 45 45 45 45 46 45 45 45 46 46 45 45 46 45 46 46 46 45 46 45 45 45 45 46 45 46 45 46 45 45 45 45 45 46 46 46 45 45 45 45 45 45 46 45 45 45 46 46 45 46 45 46 45 46 46 46 46 46 46 45 45 46 45 46 46 45 45 46 45 46 45 46 46 46 46 45 45 45 45 45 46 45 46 46 45 45 45 46 45 46 45 45 45 46 46 45 45 46 45 45 45 45 45 46 45 45 45 45 45 46 45 46 45 45 46 46 46 46 46 46 45 45 46 46 45 46 46 45 46 45 45 45 45 45 45 45 45 45 46 46 45 46 46 45 45 45 45 46 45 45 45 45 45 46 45 45 46 46 46 45 45 45 45 45 46 45 45 45 45 45 45 45 46 46 45 45 45 46 46 46 45 46 46 45 46 46 45 45 46 45 45 46 45 45 45 46 45 46 45 45 45 45 46 46 45 46 45 46 45 45 45 45 46 46 45 46 45 45 45 46 45 45 46 45 45 46 45 45 45 45 46 45 46 46 45 45 46 46 46 45 46 45 45 45 45 46 45 46 46 45 46 46 45 45 46 45 45 45 45 45 46 45 46 45 46 45 45 46 45 45 45 46 46 46 46 46 46 46 46 45 45 45 45 46 45 46 45 45 45 45 45 45 46 46 46 46 45 46 46 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 45 45 46 45 45 45 46 45 45 45 46 46 45 45 45 45 46 45 46 45 46 45 45 46 45 45 45 45 46 45 45 46 45 45 46 46 46 45 45 46 45 45 46 45 46 46 45 45 46 45 46 45 45 45 45 45 45 45 46 46 46 45 45 45 45 45 45 45 45 46 45 46 46 45 46 46 45 45 45 46 45 45 45 45 46 45 45 46 46 46 46 45 45 46 45 45 46 45 45 46 45 45 45 45 45 45 45 46 46 46 45 45 46 46 45 45 45 45 45 46 46 45 46 45 46 46 45 45 46 46 45 45 45 46 46 45 45 45 45 45 46 46 46 46 45 45 45 45 45 46 45 46 45 45 46 45 46 46 45 45 46 45 45 46 45 45 46 45 45 45 46 46 45 46 46 45 46 46 45 45 46 46 45 45 45 45 46 46 46 45 46 45 45 46 45 45 45
*/

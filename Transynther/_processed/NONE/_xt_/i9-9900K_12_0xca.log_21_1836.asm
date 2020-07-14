.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rdi
push %rdx
lea addresses_WT_ht+0x2caa, %r15
clflush (%r15)
sub $38776, %r13
movb (%r15), %dl
nop
xor $6251, %r10
lea addresses_normal_ht+0x62ce, %r9
nop
nop
dec %r15
movb (%r9), %r8b
nop
nop
nop
nop
add $22503, %rdx
lea addresses_UC_ht+0x133ce, %r15
nop
nop
nop
nop
and $28407, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%r15)
nop
add $61544, %rdi
lea addresses_A_ht+0x17c4e, %rdx
clflush (%rdx)
and $31729, %r15
movb (%rdx), %r13b
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x1edce, %r13
clflush (%r13)
nop
nop
nop
nop
add $29061, %rdi
movups (%r13), %xmm6
vpextrq $1, %xmm6, %r10
nop
nop
nop
nop
and $45105, %r9
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_US+0x694e, %r14
nop
nop
nop
add $17711, %rax
mov $0x5152535455565758, %r8
movq %r8, (%r14)
nop
nop
and $55929, %rax

// Faulty Load
lea addresses_D+0x22ce, %rdi
nop
nop
dec %rbp
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'36': 21}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/

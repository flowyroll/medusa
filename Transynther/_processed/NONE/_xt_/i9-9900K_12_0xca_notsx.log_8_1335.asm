.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rbp
push %rbx
push %rdi
lea addresses_normal_ht+0xa79c, %r15
and $55433, %r13
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
nop
nop
nop
nop
cmp $61289, %r11
lea addresses_A_ht+0x10a74, %r13
nop
nop
and %rbp, %rbp
vmovups (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_normal+0x14ffc, %rcx
add %rsi, %rsi
movw $0x5152, (%rcx)
nop
and $5838, %r13

// Store
lea addresses_RW+0xec14, %rsi
clflush (%rsi)
nop
nop
nop
dec %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovntdq %ymm3, (%rsi)
nop
add $55681, %r11

// Faulty Load
lea addresses_PSE+0x1c74, %r11
nop
nop
nop
inc %r13
movups (%r11), %xmm2
vpextrq $1, %xmm2, %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'33': 8}
33 33 33 33 33 33 33 33
*/

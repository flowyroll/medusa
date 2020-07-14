.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rdx
lea addresses_UC_ht+0xcc61, %rdx
nop
nop
nop
and %r13, %r13
movb $0x61, (%rdx)
nop
nop
xor %r11, %r11
pop %rdx
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_RW+0xf5b1, %rbp
nop
add $60655, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rbp)
nop
sub $20699, %rax

// Store
lea addresses_normal+0xeb41, %r9
nop
nop
add $1930, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_WT+0x4201, %r9
cmp $18378, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r9)
nop
cmp $10655, %rax

// Faulty Load
lea addresses_WT+0xbc01, %rdx
nop
dec %r15
vmovaps (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'00': 27}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

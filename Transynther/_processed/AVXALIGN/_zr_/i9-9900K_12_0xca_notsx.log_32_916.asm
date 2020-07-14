.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbx
push %rdx
lea addresses_A_ht+0x167bb, %r15
nop
nop
nop
sub $59054, %rbx
movw $0x6162, (%r15)
add $65449, %r10
lea addresses_A_ht+0x1473b, %r15
nop
nop
nop
nop
sub $42591, %r9
mov $0x6162636465666768, %r10
movq %r10, (%r15)
nop
nop
inc %r12
lea addresses_WT_ht+0x14c97, %rdx
clflush (%rdx)
nop
nop
nop
cmp $22538, %r10
mov (%rdx), %r15
nop
nop
nop
nop
add $13771, %rdx
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rdi
push %rdx

// Store
lea addresses_PSE+0xa0bb, %r11
nop
nop
sub $30779, %r9
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
nop
nop
inc %r8

// Store
lea addresses_WC+0xe03b, %r9
nop
nop
and $53161, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
nop
dec %rdx

// Faulty Load
mov $0x43b, %r8
cmp $26611, %r11
vmovntdqa (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'00': 32}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

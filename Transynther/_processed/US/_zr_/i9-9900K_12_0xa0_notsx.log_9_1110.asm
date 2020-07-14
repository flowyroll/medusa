.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rax
push %rcx
lea addresses_normal_ht+0x6019, %rax
nop
nop
nop
nop
cmp $31429, %r14
movb $0x61, (%rax)
and %r10, %r10
lea addresses_A_ht+0x17b61, %r13
nop
nop
nop
and $13523, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%r13)
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x1635, %rcx
dec %r14
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x7439, %r11
clflush (%r11)
nop
nop
nop
cmp $21782, %r13
mov $0x6162636465666768, %r9
movq %r9, (%r11)
nop
nop
sub $3328, %rax
lea addresses_UC_ht+0x178e9, %r14
add $2228, %rcx
mov $0x6162636465666768, %rax
movq %rax, (%r14)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x7239, %rax
nop
nop
nop
add %rcx, %rcx
mov (%rax), %r10w
nop
nop
and $65178, %rax
lea addresses_normal_ht+0x7339, %rcx
nop
nop
nop
nop
cmp $42367, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rcx)
nop
xor $28903, %r14
lea addresses_WT_ht+0x18b63, %r14
nop
cmp $18873, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%r14)
nop
nop
sub $54417, %r13
lea addresses_A_ht+0x1a619, %r10
nop
nop
nop
inc %rcx
movl $0x61626364, (%r10)
nop
nop
add $13461, %rcx
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x12239, %rdi
nop
xor $38803, %r12
mov (%rdi), %cx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 5}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/

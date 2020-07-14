.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1befc, %rsi
lea addresses_D_ht+0xfac, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $70, %rcx
rep movsl
and $7405, %rdi
lea addresses_A_ht+0x8f9c, %rsi
lea addresses_WT_ht+0x93dc, %rdi
nop
nop
cmp $42661, %r8
mov $113, %rcx
rep movsb
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x2fdc, %r9
nop
nop
nop
nop
nop
xor %r13, %r13
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
and $58608, %rdi
lea addresses_UC_ht+0x6fdc, %rsi
lea addresses_normal_ht+0xa79c, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $3, %rcx
rep movsl
nop
cmp %r9, %r9
lea addresses_WC_ht+0xdbdc, %r9
nop
nop
sub %r13, %r13
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
sub $63690, %rbp
lea addresses_WC_ht+0x85dc, %rdi
add $6229, %rbp
mov (%rdi), %r8d
nop
nop
nop
nop
nop
inc %rbp
lea addresses_WC_ht+0xf0b4, %rsi
lea addresses_D_ht+0x16bdc, %rdi
nop
nop
nop
nop
cmp $64442, %r12
mov $0, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $50981, %r13
lea addresses_UC_ht+0x14e1a, %rsi
lea addresses_A_ht+0x11bdc, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $19, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x10a4c, %r12
nop
nop
and $36867, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
cmp $61412, %r8
lea addresses_WC_ht+0x5d4c, %rcx
nop
add $59074, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
inc %rbp
lea addresses_A_ht+0x8bdc, %rsi
nop
inc %rbp
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
xor $32672, %rbp
lea addresses_D_ht+0xd5c, %r9
nop
dec %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r9)
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x5bdc, %r12
nop
nop
nop
nop
nop
and $14810, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm2
movups %xmm2, (%r12)
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x150dc, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $52603, %rcx
mov (%rsi), %r14w
xor $33833, %r14

// Load
mov $0x29c, %rdx
nop
nop
nop
nop
nop
dec %rdi
mov (%rdx), %r11d
nop
nop
inc %r14

// Store
mov $0x7fda5d0000000e2c, %rsi
cmp $15664, %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
xor $38602, %rdx

// Store
lea addresses_WC+0x125dc, %rdi
nop
nop
nop
sub $20762, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovaps %ymm7, (%rdi)
nop
nop
and %r14, %r14

// Store
lea addresses_A+0x23dc, %rcx
add $57249, %rdi
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
nop
nop
xor $50744, %r11

// Store
lea addresses_WT+0x14f88, %r14
nop
nop
dec %rcx
movb $0x51, (%r14)
nop
nop
nop
nop
cmp $11086, %r10

// Store
lea addresses_WT+0x84fc, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movaps %xmm2, (%rdi)
nop
nop
nop
add $49646, %r14

// Faulty Load
lea addresses_PSE+0x15bdc, %rsi
nop
nop
nop
nop
nop
and $55815, %r10
mov (%rsi), %r11
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 8, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'33': 17328}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/

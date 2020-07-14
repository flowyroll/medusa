.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1a386, %rcx
nop
xor %r8, %r8
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x1d02e, %r11
nop
nop
and %rax, %rax
movb $0x61, (%r11)
nop
nop
nop
xor $33450, %rsi
lea addresses_D_ht+0x6, %rsi
nop
nop
cmp $36078, %rax
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0xce64, %rsi
lea addresses_normal_ht+0x9efe, %rdi
nop
nop
nop
nop
nop
cmp $59040, %r8
mov $121, %rcx
rep movsb
sub $53105, %rax
lea addresses_WC_ht+0x15946, %rcx
nop
nop
nop
nop
nop
cmp %r15, %r15
movb (%rcx), %r8b
nop
sub %r8, %r8
lea addresses_WC_ht+0xdde6, %rsi
lea addresses_D_ht+0xc86a, %rdi
nop
nop
dec %r11
mov $102, %rcx
rep movsw
nop
cmp $41876, %r15
lea addresses_WC_ht+0x1eee6, %r11
nop
nop
nop
nop
xor $50468, %rdi
mov (%r11), %r15d
nop
nop
nop
nop
cmp $52684, %r11
lea addresses_normal_ht+0xc6f6, %rsi
clflush (%rsi)
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x155e6, %rsi
nop
nop
nop
nop
dec %r8
mov (%rsi), %ecx
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0xde6, %rsi
lea addresses_A+0x14ce6, %rdi
nop
nop
nop
add $53204, %r14
mov $113, %rcx
rep movsw
nop
dec %rdx

// Store
lea addresses_normal+0xde6, %rsi
nop
nop
nop
sub $57745, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
sub $65318, %rcx

// Store
lea addresses_WC+0x155e6, %rdx
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rdx)
nop
nop
nop
nop
cmp $23264, %rdx

// Store
lea addresses_D+0xbf6, %r15
and $65090, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r15)
nop
nop
add $32878, %r14

// Store
lea addresses_D+0x9266, %rdx
mfence
mov $0x5152535455565758, %rax
movq %rax, (%rdx)
nop
nop
nop
nop
nop
cmp $20085, %rcx

// Load
lea addresses_normal+0xde6, %r15
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%r15), %r14d
nop
nop
nop
nop
and $16480, %r15

// Load
lea addresses_UC+0x16ce2, %rax
nop
nop
nop
dec %r15
vmovups (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
nop
nop
dec %rax

// Load
lea addresses_PSE+0x5104, %rdx
nop
nop
nop
inc %rax
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
sub $61942, %rdx

// Store
lea addresses_normal+0xde6, %r14
nop
nop
nop
xor %rsi, %rsi
movb $0x51, (%r14)
nop
add $60203, %r15

// Faulty Load
lea addresses_normal+0xde6, %rcx
nop
nop
cmp %rdx, %rdx
mov (%rcx), %r14w
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'51': 677}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/

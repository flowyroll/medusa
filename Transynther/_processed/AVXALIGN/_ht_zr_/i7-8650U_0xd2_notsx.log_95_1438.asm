.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x8728, %rdi
nop
and $32246, %r11
movb (%rdi), %bl
nop
nop
nop
nop
nop
xor $41588, %rbx
lea addresses_WT_ht+0x19e28, %rcx
nop
cmp $34355, %r15
movb $0x61, (%rcx)
nop
nop
inc %rcx
lea addresses_D_ht+0x7588, %rsi
lea addresses_WC_ht+0x14dfb, %rdi
nop
nop
nop
nop
nop
xor $30643, %r10
mov $19, %rcx
rep movsq
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x10728, %rsi
lea addresses_WT_ht+0x6f88, %rdi
nop
nop
nop
nop
and $6399, %r14
mov $29, %rcx
rep movsq
nop
add %r15, %r15
lea addresses_normal_ht+0x10434, %rcx
nop
nop
nop
xor %r11, %r11
movb (%rcx), %bl
nop
nop
nop
nop
cmp $38871, %rsi
lea addresses_WT_ht+0x15428, %rsi
lea addresses_WT_ht+0x11628, %rdi
clflush (%rdi)
nop
nop
dec %r15
mov $5, %rcx
rep movsw
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0xa328, %r15
nop
nop
nop
nop
nop
and %r11, %r11
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
xor $36645, %r14
lea addresses_WT_ht+0xdb60, %rcx
nop
nop
nop
nop
and $45767, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%rcx)
nop
add $61587, %r11
lea addresses_D_ht+0x17428, %r15
nop
nop
and $6647, %r14
movb $0x61, (%r15)
nop
nop
nop
nop
xor $47824, %r14
lea addresses_WT_ht+0x1baa0, %rsi
lea addresses_normal_ht+0x5d78, %rdi
clflush (%rdi)
nop
nop
lfence
mov $58, %rcx
rep movsw
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x378, %r14
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rbx
push %rcx

// Store
lea addresses_D+0x7d64, %r10
nop
nop
xor $8899, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r10)
nop
nop
inc %r10

// Store
mov $0x228, %rbx
nop
nop
nop
nop
and $54521, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
add $38428, %r10

// Faulty Load
lea addresses_US+0x1ba28, %r15
clflush (%r15)
nop
nop
nop
nop
sub $56983, %r11
vmovaps (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 81, '46': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 46 46 00 46 46 00 00 00 00 00 00 46 00 46 46 46 00 00 00 00 00 46 00 46 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

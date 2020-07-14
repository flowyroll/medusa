.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rbx
push %rdx
lea addresses_A_ht+0x2688, %r8
clflush (%r8)
sub $60185, %rdx
movb (%r8), %r11b
dec %rbx
pop %rdx
pop %rbx
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi

// Store
mov $0x808, %rbx
add %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%rbx)
nop
and %r8, %r8

// Store
lea addresses_WT+0x19fa8, %rax
nop
nop
nop
add %r11, %r11
movw $0x5152, (%rax)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_A+0xb008, %rdi
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rdi)
nop
and %rdi, %rdi

// Store
mov $0x1b5d190000000008, %rax
nop
nop
sub %r11, %r11
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_RW+0xac08, %r11
nop
sub $12524, %r8
movl $0x51525354, (%r11)
nop
nop
xor %rcx, %rcx

// Load
lea addresses_WT+0xc08, %rax
nop
nop
nop
nop
nop
dec %rbx
movb (%rax), %r8b
and %rdi, %rdi

// Store
lea addresses_A+0x11bb0, %r10
nop
nop
nop
nop
nop
cmp $38947, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r10)
nop
nop
add $62550, %rbx

// Faulty Load
lea addresses_A+0xb008, %rdi
nop
nop
nop
nop
add %rbx, %rbx
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 39}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

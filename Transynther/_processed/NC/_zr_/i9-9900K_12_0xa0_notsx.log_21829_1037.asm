.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1cef3, %rsi
lea addresses_WT_ht+0xc93, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $112, %rcx
rep movsl
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xf293, %rsi
lea addresses_D_ht+0xd113, %rdi
nop
add $20283, %r10
mov $79, %rcx
rep movsw
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1bd7f, %rsi
lea addresses_WC_ht+0xae43, %rdi
add $34533, %rbx
mov $93, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $12222, %rcx
lea addresses_UC_ht+0x13ab3, %rsi
lea addresses_UC_ht+0x1d187, %rdi
nop
nop
nop
nop
nop
and $7500, %rdx
mov $14, %rcx
rep movsl
nop
nop
nop
xor $41973, %rdi
lea addresses_UC_ht+0x9d33, %rsi
lea addresses_UC_ht+0x1d453, %rdi
nop
add %rbx, %rbx
mov $55, %rcx
rep movsb
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0xee13, %rsi
nop
nop
nop
nop
add %r15, %r15
mov (%rsi), %rdx
nop
nop
nop
cmp $15662, %rbx
lea addresses_A_ht+0xc693, %r10
nop
nop
nop
xor $23637, %rcx
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x13873, %rdx
nop
nop
add $11994, %r10
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
nop
nop
nop
and $49608, %rdx
lea addresses_A_ht+0x3473, %rsi
lea addresses_normal_ht+0xb693, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $82, %rcx
rep movsb
and $17786, %rdi
lea addresses_normal_ht+0x13dd3, %rdi
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
sub $60391, %rcx
lea addresses_UC_ht+0x165f4, %rsi
lea addresses_D_ht+0xb393, %rdi
clflush (%rdi)
nop
nop
cmp %r14, %r14
mov $114, %rcx
rep movsb
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x1a9ed, %rsi
lea addresses_A_ht+0x91d3, %rdi
clflush (%rdi)
nop
nop
add $10666, %rdx
mov $2, %rcx
rep movsw
nop
nop
nop
add $54623, %r14
lea addresses_normal_ht+0x7669, %r15
nop
nop
nop
xor $25797, %rdi
movb (%r15), %r10b
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x9f93, %rsi
lea addresses_WC_ht+0x1ebd3, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $22, %rcx
rep movsq
nop
and %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x17093, %rsi
lea addresses_D+0x1b6bb, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $19, %rcx
rep movsl
nop
nop
nop
xor $40859, %r13

// Store
lea addresses_WT+0x9a93, %r11
and $14521, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
nop
inc %r10

// Store
lea addresses_UC+0x17c97, %rdi
nop
nop
nop
nop
xor $60375, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
add $10431, %r11

// Store
lea addresses_D+0x14153, %r10
add $58643, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
nop
add $53934, %rcx

// Faulty Load
mov $0x20cd470000000b93, %rdi
nop
nop
nop
nop
sub %r11, %r11
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8, 'NT': True, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

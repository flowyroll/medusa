.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xaf51, %r13
inc %rbp
movw $0x6162, (%r13)
and $11475, %r12
lea addresses_WC_ht+0xdf51, %r9
nop
nop
nop
nop
sub $16572, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
nop
sub $35059, %rbp
lea addresses_UC_ht+0xd151, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r9
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
nop
nop
nop
and $43323, %rbp
lea addresses_WC_ht+0x14fd1, %r12
nop
nop
nop
sub $22721, %rbx
movl $0x61626364, (%r12)
xor %r9, %r9
lea addresses_normal_ht+0x1c351, %rsi
lea addresses_WC_ht+0x91d1, %rdi
nop
nop
nop
nop
xor $51360, %r13
mov $13, %rcx
rep movsl
cmp $3384, %rbx
lea addresses_UC_ht+0x11ed1, %rsi
lea addresses_WT_ht+0x12b51, %rdi
nop
nop
dec %r12
mov $17, %rcx
rep movsb
sub $44644, %rdi
lea addresses_WT_ht+0x17b51, %rsi
lea addresses_WT_ht+0x16751, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $103, %rcx
rep movsq
nop
add %r8, %r8
lea addresses_normal_ht+0x17511, %rsi
nop
xor %rcx, %rcx
mov (%rsi), %bx
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x1af18, %rsi
lea addresses_A_ht+0x17851, %rdi
nop
nop
nop
nop
add $40308, %r8
mov $93, %rcx
rep movsq
xor $35461, %rsi
lea addresses_WC_ht+0xd97a, %rcx
nop
nop
nop
nop
inc %rbx
movb $0x61, (%rcx)
nop
nop
nop
nop
xor $22973, %r8
lea addresses_WT_ht+0x19751, %rsi
lea addresses_WT_ht+0xfcc9, %rdi
xor %r13, %r13
mov $83, %rcx
rep movsl
nop
nop
nop
nop
xor $18590, %r12
lea addresses_A_ht+0xfd51, %rsi
nop
sub %rbp, %rbp
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %r8
add %rbp, %rbp
lea addresses_normal_ht+0x6561, %rsi
lea addresses_UC_ht+0xef51, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $6800, %r13
mov $73, %rcx
rep movsb
nop
nop
nop
nop
sub %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
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
push %r15
push %r8
push %rcx
push %rdx
push %rsi

// Load
lea addresses_US+0xd751, %r10
add %rsi, %rsi
mov (%r10), %r8d
nop
nop
nop
nop
nop
dec %r15

// Store
lea addresses_A+0xc8d9, %r11
nop
nop
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm0
movntdq %xmm0, (%r11)
add %rcx, %rcx

// Load
lea addresses_D+0x1aa91, %rsi
clflush (%rsi)
nop
nop
cmp $37165, %r8
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_UC+0xf51, %rsi
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WT+0x14f51, %rsi
nop
nop
nop
nop
add %rcx, %rcx
movb $0x51, (%rsi)
nop
and %rdx, %rdx

// Faulty Load
lea addresses_UC+0xf51, %r8
nop
nop
nop
add %r15, %r15
vmovups (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'36': 1123, '49': 4885, '00': 10630}
00 00 00 00 00 00 49 00 00 00 49 00 00 00 36 00 00 00 00 00 00 00 49 49 49 00 00 36 00 00 49 49 49 36 49 00 36 49 00 00 00 49 00 00 00 49 49 00 00 00 00 00 36 00 00 00 00 36 49 00 00 00 00 00 49 00 00 49 49 00 00 00 00 00 00 49 00 00 00 49 49 00 49 36 49 49 00 00 00 49 00 00 00 36 49 49 00 00 00 00 49 36 49 49 00 00 00 00 36 49 49 49 00 00 49 49 00 00 00 49 36 00 00 00 00 36 49 00 00 49 49 00 49 00 00 49 49 00 00 49 49 49 00 49 49 00 49 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 49 49 00 00 49 00 49 00 36 00 00 00 49 00 00 00 00 49 00 00 00 00 00 36 00 49 49 00 49 00 00 00 36 49 00 00 00 00 00 49 49 49 00 49 00 00 00 49 00 00 00 49 49 00 36 49 49 00 49 49 00 00 00 49 00 49 00 00 00 00 00 49 49 49 00 00 00 00 00 36 00 00 36 49 49 00 00 00 00 00 00 00 00 00 00 36 36 00 00 00 00 49 00 00 00 00 00 49 00 49 49 00 00 00 00 49 49 00 00 00 00 49 00 00 00 00 49 49 49 00 00 00 00 00 49 00 00 00 49 00 36 00 00 36 49 36 00 36 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 36 49 00 00 00 00 00 00 49 49 00 49 49 00 49 00 00 00 49 49 00 49 49 36 00 49 00 49 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 36 49 49 00 49 00 00 49 00 00 00 00 00 36 49 49 49 00 00 36 49 00 00 49 49 49 36 00 00 49 00 00 00 00 00 36 00 00 00 00 49 00 00 00 00 00 49 49 00 00 49 00 49 49 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 49 00 00 00 00 00 00 49 49 00 00 00 49 49 00 36 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 49 00 00 49 00 00 49 49 00 00 00 00 00 00 49 00 00 49 00 49 49 00 00 49 00 00 00 49 49 00 00 00 00 00 00 00 49 00 00 00 00 00 49 49 36 49 49 00 00 00 49 00 00 00 00 49 49 49 49 49 49 00 49 00 00 00 00 00 49 00 00 00 49 00 49 00 00 00 00 00 49 36 00 00 00 00 00 00 00 00 49 36 00 49 49 00 00 00 49 00 00 49 36 49 00 49 00 00 00 49 49 00 00 00 00 36 49 36 49 00 49 00 49 00 49 00 49 49 00 00 36 00 00 00 00 00 00 00 00 49 00 00 00 00 49 36 36 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 36 36 49 00 49 49 49 00 00 00 00 00 00 00 36 00 00 49 00 00 00 49 00 00 49 49 00 00 00 36 49 49 00 00 49 36 00 49 00 36 49 36 00 49 00 00 00 00 00 00 00 00 00 49 00 00 49 36 49 49 49 00 49 00 49 00 00 00 00 49 49 49 00 00 00 36 49 00 49 49 00 49 49 00 00 49 00 36 00 00 00 36 49 49 49 00 49 00 00 00 49 00 00 00 36 00 00 00 49 36 00 49 36 00 00 36 49 00 49 36 00 00 49 00 49 00 00 49 49 00 36 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 49 36 00 00 00 00 49 49 00 00 49 00 00 49 00 00 49 49 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 36 00 36 49 00 49 00 00 00 00 00 00 49 00 49 00 00 00 49 00 49 49 00 00 00 00 00 49 49 49 49 00 00 00 00 00 00 00 49 00 49 00 00 00 00 49 00 49 49 00 49 49 49 00 00 49 00 49 00 49 49 00 00 36 00 49 00 00 49 00 00 00 00 00 00 49 49 00 00 49 00 49 00 00 00 49 00 00 36 49 00 00 00 00 00 00 49 49 49 49 00 49 49 49 00 00 49 00 00 00 49 49 49 00 00 49 00 00 36 00 00 49 00 00 00 00 00 00 36 00 49 49 00 00 00 00 49 36 00 00 49 00 49 00 00 00 49 00 00 00 00 00 00 00 00 49 00 36 00 00 00 00 00 00
*/

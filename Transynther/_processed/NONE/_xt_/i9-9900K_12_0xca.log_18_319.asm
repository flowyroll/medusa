.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x99cd, %r14
nop
nop
nop
sub $31704, %r10
mov (%r14), %ecx
nop
nop
nop
xor $36740, %r8
lea addresses_D_ht+0x10488, %rcx
nop
nop
nop
nop
and $56619, %r11
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
sub $2087, %rax
lea addresses_D_ht+0x15894, %r11
nop
nop
nop
nop
nop
add %rcx, %rcx
movups (%r11), %xmm0
vpextrq $0, %xmm0, %r10
nop
cmp $39474, %r10
lea addresses_UC_ht+0xa4c8, %rsi
lea addresses_A_ht+0x7588, %rdi
nop
nop
nop
cmp $29908, %rax
mov $25, %rcx
rep movsb
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdx

// Load
mov $0x65a9d20000000918, %r8
nop
and $51445, %r9
movb (%r8), %r12b
nop
nop
nop
nop
and %r9, %r9

// Store
mov $0x34042a0000000188, %r12
nop
nop
and $24413, %rdx
movb $0x51, (%r12)
nop
sub $54074, %r8

// Store
lea addresses_A+0x18ca8, %rbx
cmp $46398, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%rbx)
nop
cmp %rbx, %rbx

// Store
lea addresses_A+0x18518, %r11
nop
nop
nop
nop
sub $7080, %r9
movb $0x51, (%r11)
add $61531, %rdx

// Store
lea addresses_normal+0x7808, %r9
nop
add %rbx, %rbx
movw $0x5152, (%r9)
nop
nop
nop
dec %rdx

// Faulty Load
lea addresses_D+0x9588, %rcx
cmp %rbx, %rbx
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'36': 18}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/

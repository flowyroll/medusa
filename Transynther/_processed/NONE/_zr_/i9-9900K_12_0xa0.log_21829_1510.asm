.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xcad5, %rsi
lea addresses_normal_ht+0x15a11, %rdi
clflush (%rsi)
nop
lfence
mov $107, %rcx
rep movsl
nop
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x11af5, %r14
nop
cmp %r9, %r9
movl $0x61626364, (%r14)
nop
nop
nop
nop
sub $55087, %rdi
lea addresses_normal_ht+0xfce9, %rsi
lea addresses_normal_ht+0x2ce9, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $84, %rcx
rep movsw
nop
nop
nop
nop
xor $49537, %r14
lea addresses_normal_ht+0xfce9, %r14
clflush (%r14)
nop
nop
nop
nop
add %rsi, %rsi
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
xor %r12, %r12
lea addresses_D_ht+0x18289, %rsi
lea addresses_normal_ht+0x1866d, %rdi
nop
nop
add $17811, %r15
mov $39, %rcx
rep movsb
nop
and $62652, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0xb283, %rbx
nop
nop
and $36216, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movntdq %xmm4, (%rbx)
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_PSE+0xc969, %rdx
xor $2933, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rdx)
nop
nop
nop
nop
cmp $23184, %rbx

// Store
lea addresses_RW+0x168e9, %r9
xor $41284, %r11
movw $0x5152, (%r9)
nop
nop
nop
nop
sub %r12, %r12

// Load
lea addresses_D+0xda19, %r9
nop
nop
add %rsi, %rsi
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
dec %rsi

// Store
mov $0x18f2bb00000008e5, %rcx
and %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%rcx)
nop
cmp $35853, %r11

// Store
mov $0x6e14e900000005b1, %rsi
sub $55669, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_WT+0x24e9, %r9
nop
nop
nop
and %r11, %r11
movb (%r9), %r12b
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

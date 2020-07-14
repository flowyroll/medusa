.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x5d0f, %rbp
nop
nop
and $28965, %r11
mov (%rbp), %r12
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x13ee5, %rax
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rax)
nop
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x3b2d, %rsi
lea addresses_WC_ht+0xad25, %rdi
nop
nop
nop
nop
nop
add $62864, %rbp
mov $89, %rcx
rep movsw
nop
dec %rax
lea addresses_D_ht+0xbb65, %rax
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rax), %rbp
nop
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x5725, %rsi
lea addresses_D_ht+0x48a9, %rdi
nop
nop
nop
xor $7458, %rax
mov $17, %rcx
rep movsw
nop
nop
nop
inc %r12
lea addresses_WC_ht+0x76e9, %rsi
lea addresses_A_ht+0x9325, %rdi
nop
nop
nop
nop
nop
and $41641, %r11
mov $25, %rcx
rep movsb
nop
add %rdi, %rdi
lea addresses_UC_ht+0xde75, %r12
nop
nop
nop
nop
and $29842, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%r12)
cmp $281, %r11
lea addresses_WT_ht+0x6661, %rsi
lea addresses_WT_ht+0xa8a5, %rdi
nop
nop
inc %r11
mov $65, %rcx
rep movsl
nop
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0xd8a5, %rcx
nop
nop
nop
add $42227, %r11
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
nop
nop
inc %r12
lea addresses_D_ht+0x10ea7, %rsi
lea addresses_WT_ht+0x5cb4, %rdi
nop
nop
sub $57190, %r12
mov $19, %rcx
rep movsb
and %rdi, %rdi
lea addresses_normal_ht+0x463d, %r11
nop
nop
xor %rbp, %rbp
vmovups (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
sub %r11, %r11
lea addresses_A_ht+0x12ee5, %rsi
lea addresses_UC_ht+0x18265, %rdi
clflush (%rdi)
nop
nop
xor $50056, %r11
mov $81, %rcx
rep movsl
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0xb069, %rdi
nop
nop
dec %rsi
mov (%rdi), %cx
inc %r11
lea addresses_D_ht+0x1bd49, %rcx
nop
nop
nop
nop
dec %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_US+0xdaa5, %rcx
nop
nop
nop
nop
sub $836, %rbp
movw $0x5152, (%rcx)
nop
nop
nop
add %rax, %rax

// Store
lea addresses_D+0x6ced, %r12
nop
nop
nop
dec %r8
movl $0x51525354, (%r12)
nop
xor $14149, %r12

// Store
lea addresses_D+0x1ce65, %rax
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rax)
nop
nop
inc %rdx

// Store
lea addresses_PSE+0xa325, %r14
nop
nop
nop
nop
nop
add $12710, %r12
mov $0x5152535455565758, %r8
movq %r8, (%r14)
nop
nop
sub %rdx, %rdx

// Store
mov $0x7ffcb50000000125, %rcx
nop
nop
nop
nop
cmp $35326, %r12
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
mov $0x5cf6fd0000000f25, %rcx
add %rbp, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovaps %ymm4, (%rcx)
nop
nop
nop
cmp $61599, %rcx

// Faulty Load
mov $0x5cf6fd0000000f25, %r8
nop
nop
and $18221, %r12
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': True, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'44': 2, '45': 30, '49': 2, '00': 21795}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
